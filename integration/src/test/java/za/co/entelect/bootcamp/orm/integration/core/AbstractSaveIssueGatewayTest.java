package za.co.entelect.bootcamp.orm.integration.core;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;


public abstract class AbstractSaveIssueGatewayTest {
    protected abstract SaveIssueGateway getClassUnderTest() throws Exception;
    protected abstract ReadOneIssueGateway getReadGateway() throws Exception;

    protected InMemoryDbProvider dbProvider;

    @Before
    public void setUp() throws SQLException, Exception {
        dbProvider = new InMemoryDbProvider("comic.sql", "MODE=MSSQLServer");
    }

    @After
    public void tearDown() throws Exception {
        dbProvider.cleanUpDatabase();
    }

    @Test
    public void testCreate() throws Exception {
        // Given
        // When
        Issue issue = new Issue();
        issue.setTitle("Test");
        issue.setDescription("Test");
        issue.setSeriesNumber(5);
        issue.setPublicationDate(LocalDate.now());
        issue.setPublisher("Entelect");
        issue = getClassUnderTest().save(issue);

        // Then
        assertNotNull(issue.getId());

        assertEquals(10L, (long) countRecords());
    }

    @Test
    public void testUpdate() throws Exception {
        // Given
        Issue issue = getReadGateway().findById(2L);

        // When
        issue.setTitle("Test 2");
        issue.setDescription("Test 2");
        issue.setPublisher("Entelect");
        issue.setPublicationDate(LocalDate.now());
        issue.setSeriesNumber(999);
        issue = getClassUnderTest().save(issue);

        // Then
        assertValues(issue);
    }

    Long countRecords() throws SQLException {
        Statement statement = dbProvider.getConnection().createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Issues");

        if (!resultSet.next()) {
            return 0L;
        }

        return resultSet.getLong(1);
    }

    protected void assertValues(Issue saved) throws SQLException {
        String query = "SELECT title, description, publisher, publicationDate, seriesNumber FROM Issues WHERE IssueID = ?";
        PreparedStatement statement = dbProvider.getConnection().prepareStatement(query);
        statement.setLong(1, saved.getId());

        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        assertEquals(saved.getTitle(), resultSet.getString("title"));
        assertEquals(saved.getDescription(), resultSet.getString("description"));
        assertEquals(saved.getPublisher(), resultSet.getString("publisher"));
        assertEquals(saved.getPublicationDate(), resultSet.getDate("publicationDate").toLocalDate());
        assertEquals(saved.getSeriesNumber().intValue(), resultSet.getInt("seriesNumber"));
    }
}
