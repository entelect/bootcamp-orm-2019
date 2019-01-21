package za.co.entelect.bootcamp.orm.integration.jpa.example;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.integration.core.issue.AbstractReadIssuePageGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.example.IssueJpaGateway;

public class JpaReadIssuePageGatewayTest extends AbstractReadIssuePageGatewayTest {
    @Override
    protected ReadIssuePageGateway getClassUnderTest() throws Exception {
        return new IssueJpaGateway();
    }
}
