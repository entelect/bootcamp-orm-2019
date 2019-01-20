package za.co.entelect.bootcamp.orm.integration.jpa;

import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;
import za.co.entelect.bootcamp.orm.integration.core.AbstractSaveIssueGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.IssueJpaGateway;

import java.sql.SQLException;

public class JpaSaveIssueGatewayTest extends AbstractSaveIssueGatewayTest {
    private IssueJpaGateway gateway;

    @Override
    public void setUp() throws SQLException, Exception {
        super.setUp();

        this.gateway = new IssueJpaGateway();
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
