package za.co.entelect.bootcamp.orm.integration.jdbc;

import org.junit.Before;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;
import za.co.entelect.bootcamp.orm.integration.core.issue.AbstractSaveIssueGatewayTest;
import za.co.entelect.bootcamp.orm.jdbc.IssueJdbcGateway;

public class JdbcSaveIssueGatewayTest extends AbstractSaveIssueGatewayTest {

    private IssueJdbcGateway gateway;

    @Override
    @Before
    public void setUp() throws Exception {
        super.setUp();

        this.gateway = new IssueJdbcGateway(dbProvider.getConnection());
    }

    @Override
    protected SaveIssueGateway getClassUnderTest() throws Exception {
        return this.gateway;
    }

    @Override
    protected ReadOneIssueGateway getReadGateway() throws Exception {
        return this.gateway;
    }
}
