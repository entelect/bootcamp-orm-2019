package za.co.entelect.bootcamp.orm.integration.jpa;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.integration.core.AbstractReadIssuePageGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.IssueJpaGateway;

public class JpaReadIssuePageGatewayTest extends AbstractReadIssuePageGatewayTest {
    @Override
    protected ReadIssuePageGateway getClassUnderTest() throws Exception {
        return new IssueJpaGateway();
    }
}
