package za.co.entelect.bootcamp.orm.integration.jpa;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.integration.core.AbstractReadOneIssueGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.IssueJpaGateway;

public class JpaReadOneIssueGatewayTest extends AbstractReadOneIssueGatewayTest {
    @Override
    protected ReadOneIssueGateway getClassUnderTest() throws Exception {
        return new IssueJpaGateway();
    }
}
