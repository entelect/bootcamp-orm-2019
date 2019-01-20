package za.co.entelect.bootcamp.orm.integration.jdbc;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.integration.core.AbstractReadIssuePageGatewayTest;
import za.co.entelect.bootcamp.orm.jdbc.IssueJdbcGateway;

public class JdbcReadIssuePageGatewayTest extends AbstractReadIssuePageGatewayTest {
    @Override
    protected ReadIssuePageGateway getClassUnderTest() throws Exception {
        return new IssueJdbcGateway(dbProvider.getConnection());
    }
}
