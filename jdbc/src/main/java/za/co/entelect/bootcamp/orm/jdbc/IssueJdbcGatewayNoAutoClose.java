package za.co.entelect.bootcamp.orm.jdbc;

import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.GatewayException;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;

import java.sql.*;

@SuppressWarnings("SqlResolve")

public class IssueJdbcGatewayNoAutoClose implements ReadOneIssueGateway {
    private final String url;

    IssueJdbcGatewayNoAutoClose(String url) {
        this.url = url;
    }

    @Override
    public Issue findById(Long id) {
        Connection connection = null;
        String query =
                "SELECT IssueID, Title, PublicationDate, Publisher," +
                      " SeriesNumber, Description " +
                "FROM Issues " +
                "WHERE IssueId = " + id;
        Issue issue;
        try {
            // Any of these may throw SQLException
            connection = DriverManager.getConnection(url);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            if (!resultSet.next()) { // Could throw SQLException
                throw new NotFoundException(Issue.class, id);
            }

            issue = new Issue();
            // Any of these may throw
            issue.setId((long) resultSet.getInt(1));
            issue.setTitle(resultSet.getString(2));
            issue.setPublicationDate(resultSet.getDate(3).toLocalDate());
            issue.setPublisher(resultSet.getString(4));
            issue.setSeriesNumber(resultSet.getInt(5));
            issue.setDescription(resultSet.getString(6));
        } catch (SQLException e) {
            throw new GatewayException(e);
        } finally {
            try {
                if (connection != null) {
                    connection.close(); // Even this could throw!
                }
            } catch (SQLException ex) {
                // It only failed to close, so probably swallow this and return?
            }
        }

        return issue;
    }
}
