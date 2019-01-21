package za.co.entelect.bootcamp.orm.integration.hibernate.example;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;
import za.co.entelect.bootcamp.orm.hibernate.example.IssueHibernateGateway;
import za.co.entelect.bootcamp.orm.integration.core.issue.AbstractSaveIssueGatewayTest;

import java.sql.SQLException;

public class HibernateSaveIssueGatewayTest extends AbstractSaveIssueGatewayTest {
    private IssueHibernateGateway gateway;

    @Override
    public void setUp() throws SQLException, Exception {
        super.setUp();

        this.gateway = new IssueHibernateGateway();
    }

    @Override
    protected SaveIssueGateway getClassUnderTest() throws Exception {
        return gateway;
    }

    @Override
    protected ReadOneIssueGateway getReadGateway() throws Exception {
        return gateway;
    }
}
