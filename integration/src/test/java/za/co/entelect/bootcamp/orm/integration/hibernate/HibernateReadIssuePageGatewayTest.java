package za.co.entelect.bootcamp.orm.integration.hibernate;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.hibernate.IssueHibernateGateway;
import za.co.entelect.bootcamp.orm.integration.core.AbstractReadIssuePageGatewayTest;

public class HibernateReadIssuePageGatewayTest extends AbstractReadIssuePageGatewayTest{
    @Override
    protected ReadIssuePageGateway getClassUnderTest() throws Exception {
        return new IssueHibernateGateway();
    }
}
