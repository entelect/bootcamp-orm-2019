package za.co.entelect.bootcamp.orm.integration.core;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;

import java.sql.SQLException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public abstract class AbstractReadIssuePageGatewayTest {
    protected abstract ReadIssuePageGateway getClassUnderTest() throws Exception;

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
    public void testPaging() throws Exception {
        // Given
        int pageSize = 5;
        int totalRecords = 9;

        // When
        Page<Issue> page1 = getClassUnderTest().findPage(0, pageSize);
        Page<Issue> page2 = getClassUnderTest().findPage(1, pageSize);

        // Then
        assertNotNull(page1);
        assertEquals(totalRecords, page1.getTotalRecords());
        assertEquals(pageSize, page1.getPageSize());
        assertEquals(pageSize, page1.getData().size());

        assertNotNull(page2);
        assertEquals(totalRecords, page2.getTotalRecords());
        assertEquals(pageSize, page2.getPageSize());
        assertEquals(totalRecords - pageSize, page2.getData().size());
    }
}
