package za.co.entelect.bootcamp.orm.integration.jdbc;

import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.GatewayException;

import static org.junit.Assert.assertEquals;

public class IssueJdbcGatewaySecurityTest extends AbstractJdbcGatewayTest {

    // Failed on purpose: you need to fix the implementation to prevent SQL injection
    @Test
    public void testSqlInjectionIsNotPossible() throws GatewayException {
        // Given
        Page<Issue> issues = cut.findPage(0, 5);
        Issue issueToUpdate = issues.getData().get(0);
        assertEquals(9L, issues.getTotalRecords());

        // When
        issueToUpdate.setDescription("So many quotes!");
        issueToUpdate.setTitle("BobbyTables' WHERE IssueId=" + issueToUpdate.getId() + "; DROP TABLE Issues; --");
        cut.save(issueToUpdate);

        // Then
        Page<Issue> afterDrop = cut.findPage(0, 5); // Throws Table "ISSUES" not found
    }
}
