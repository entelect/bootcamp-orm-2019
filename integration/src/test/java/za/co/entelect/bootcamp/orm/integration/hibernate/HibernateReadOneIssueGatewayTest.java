package za.co.entelect.bootcamp.orm.integration.hibernate;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.hibernate.IssueHibernateGateway;
import za.co.entelect.bootcamp.orm.integration.core.AbstractReadOneIssueGatewayTest;

public class HibernateReadOneIssueGatewayTest extends AbstractReadOneIssueGatewayTest {
    @Override
    protected ReadOneIssueGateway getClassUnderTest() throws Exception {
        return new IssueHibernateGateway();
    }
}
