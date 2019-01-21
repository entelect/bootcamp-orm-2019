package za.co.entelect.bootcamp.orm.integration.jpa.example;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.integration.core.issue.AbstractReadOneIssueGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.example.IssueJpaGateway;

public class JpaReadOneIssueGatewayTest extends AbstractReadOneIssueGatewayTest {
    @Override
    protected ReadOneIssueGateway getClassUnderTest() throws Exception {
        return new IssueJpaGateway();
    }
}
