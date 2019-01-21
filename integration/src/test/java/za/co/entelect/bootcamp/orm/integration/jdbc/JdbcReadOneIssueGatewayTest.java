package za.co.entelect.bootcamp.orm.integration.jdbc;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.integration.core.issue.AbstractReadOneIssueGatewayTest;
import za.co.entelect.bootcamp.orm.jdbc.IssueJdbcGateway;

public class JdbcReadOneIssueGatewayTest extends AbstractReadOneIssueGatewayTest {
    @Override
    protected ReadOneIssueGateway getClassUnderTest() {
        return new IssueJdbcGateway(dbProvider.getConnection());
    }
}
