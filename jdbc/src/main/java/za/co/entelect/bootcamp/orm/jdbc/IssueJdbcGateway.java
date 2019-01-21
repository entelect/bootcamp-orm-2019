package za.co.entelect.bootcamp.orm.jdbc;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.GatewayException;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("SqlResolve")

public class IssueJdbcGateway
        implements ReadOneIssueGateway, ReadIssuePageGateway, SaveIssueGateway {
    private final Connection connection;

    public IssueJdbcGateway(Connection connection) {
        this.connection = connection;
    }

    @Override
    public Issue findById(Long id) {
        try {
            String query =
                    "SELECT IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description " +
                            "FROM Issues " +
                            "WHERE IssueId = " + id;

            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            if (!resultSet.next()) {
                throw new NotFoundException(Issue.class, id);
            }

            Issue result = mapRow(resultSet);
            return result;
        } catch (SQLException e) {
            throw new GatewayException(e);
        }
    }

    @Override
    public Page<Issue> findPage(int page, int pageSize) {
        try {
            String countQuery = "SELECT COUNT(*) FROM Issues";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(countQuery);
            if (!resultSet.next()) {
                throw new GatewayException("Failed to count records in Issues table for paging.");
            }
            long count = resultSet.getLong(1);
            resultSet.close();

            String query =
                    "SELECT IssueID, Title, PublicationDate, Publisher, SeriesNumber, Description " +
                            "FROM Issues LIMIT ? OFFSET ?";


            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, pageSize);
            preparedStatement.setInt(2, page * pageSize);
            resultSet = preparedStatement.executeQuery();

            List<Issue> data = new ArrayList<>(pageSize);
            while (resultSet.next()) {
                data.add(mapRow(resultSet));
            }

            return new Page<>(data, page, pageSize, count);
        } catch (SQLException e) {
            throw new GatewayException(e);
        }
    }

    @Override
    public Issue save(Issue issueToSave) {
        try {
            if (exists(issueToSave.getId(), connection)) {
                return updateIssue(issueToSave, connection);
            } else {
                return createIssue(issueToSave, connection);
            }
        } catch (SQLException e) {
            throw new GatewayException(e);
        }
    }

    private boolean exists(Long issueId, Connection connection) throws SQLException {
        if (issueId == null) {
            return false;
        }

        String query = "SELECT COUNT(*) FROM Issues WHERE IssueId = ?";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setLong(1, issueId);
        ResultSet resultSet = statement.executeQuery();
        if (!resultSet.next()) {
            throw new GatewayException("Failed to count records in Issues table for existence check.");
        }
        long count = resultSet.getLong(1);
        resultSet.close();
        return count > 0;
    }

    private Issue updateIssue(Issue issueToSave, Connection connection) throws SQLException {
        String query = "UPDATE Issues SET " +
                "Title = '" + issueToSave.getTitle() + "', " +
                "PublicationDate = '" + issueToSave.getPublicationDate().toString() + "', " +
                "Publisher = '" + issueToSave.getPublisher() + "', " +
                "SeriesNumber = " + issueToSave.getSeriesNumber() + ", " +
                "Description = '" + issueToSave.getDescription() + "' " +
                "WHERE IssueId = " + issueToSave.getId();

        // TODO: Exercise 1 (JDBC) - Make SQL injection safe
        Statement statement = connection.createStatement();
        int updated = statement.executeUpdate(query);
        if (updated != 1) {
            throw new GatewayException("Failed to update Issue " + issueToSave.getId() +
                    " - expected 1 updated row, but got " + updated);
        }
        return issueToSave;
    }

    private Issue createIssue(Issue issueToSave, Connection connection) throws SQLException {
        String query = "INSERT INTO Issues(Title, PublicationDate, Publisher, SeriesNumber, Description)" +
                " VALUES(?, ?, ?, ?, ?);";
        PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        statement.setString(1, issueToSave.getTitle());
        statement.setDate(2, Date.valueOf(issueToSave.getPublicationDate()));
        statement.setString(3, issueToSave.getPublisher());
        statement.setInt(4, issueToSave.getSeriesNumber());
        statement.setString(5, issueToSave.getDescription());
        int inserted = statement.executeUpdate();

        if (inserted != 1) {
            throw new GatewayException("Failed to insert Issue - expected 1 added row, but got " + inserted);
        }

        ResultSet resultSet = statement.getGeneratedKeys();
        if (!resultSet.next()) {
            throw new GatewayException("Failed to retrieve generated key on insert...");
        }
        issueToSave.setId(resultSet.getLong(1));
        return issueToSave;
    }

    private Issue mapRow(ResultSet resultSet) throws SQLException {
        Issue issue = new Issue();
        issue.setId((long) resultSet.getInt(1));
        issue.setTitle(resultSet.getString(2));
        issue.setPublicationDate(resultSet.getDate(3).toLocalDate());
        issue.setPublisher(resultSet.getString(4));
        issue.setSeriesNumber(resultSet.getInt(5));
        issue.setDescription(resultSet.getString(6));
        return issue;
    }
}
