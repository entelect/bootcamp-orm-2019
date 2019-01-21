package za.co.entelect.bootcamp.orm.integration.core.issue;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;

import java.sql.SQLException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;


public abstract class AbstractReadOneIssueGatewayTest {
    protected abstract ReadOneIssueGateway getClassUnderTest() throws Exception;

    protected InMemoryDbProvider dbProvider;

    @Before
    public void setUp() throws SQLException {
        dbProvider = new InMemoryDbProvider("comic.sql", "MODE=MSSQLServer");
    }

    @After
    public void tearDown() throws Exception {
        dbProvider.cleanUpDatabase();
    }

    @Test
    public void testFindById() throws Exception {
        // Given
        Long id = 2L;

        // When
        Issue issue = getClassUnderTest().findById(id);

        // Then
        assertNotNull(issue);
        assertEquals(id, issue.getId());
    }

    @Test(expected = NotFoundException.class)
    public void testFindByIdCanThrowNotFoundException() throws Exception {
        // Given
        Long id = 1L;

        // When Then
        getClassUnderTest().findById(id);
    }
}
