package za.co.entelect.bootcamp.orm.integration.jdbc;

import org.junit.After;
import org.junit.Before;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;
import za.co.entelect.bootcamp.orm.jdbc.IssueJdbcGateway;

import java.sql.SQLException;

public abstract class AbstractJdbcGatewayTest {
    protected IssueJdbcGateway cut;

    private InMemoryDbProvider dbProvider;

    @Before
    public void setUp() throws SQLException {
        dbProvider = new InMemoryDbProvider("comic.sql", "MODE=MSSQLServer");
        cut = new IssueJdbcGateway(dbProvider.getConnection());
    }

    @After
    public void tearDown() {
        dbProvider.cleanUpDatabase();
    }
}
