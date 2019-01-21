package za.co.entelect.bootcamp.orm.integration.hibernate.exercise;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.hibernate.exercise.IssueWithStockHibernateGateway;
import za.co.entelect.bootcamp.orm.integration.core.issue.AbstractReadOneIssueGatewayTest;

public class HibernateReadOneIssueWithStockGatewayTest extends AbstractReadOneIssueGatewayTest {
    @Override
    protected ReadOneIssueGateway getClassUnderTest() throws Exception {
        return new IssueWithStockHibernateGateway();
    }
}
