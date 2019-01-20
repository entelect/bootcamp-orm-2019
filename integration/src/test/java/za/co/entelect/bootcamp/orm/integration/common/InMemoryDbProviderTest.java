package za.co.entelect.bootcamp.orm.integration.common;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static org.junit.Assert.assertEquals;

public class InMemoryDbProviderTest {

    private InMemoryDbProvider dbProvider;

    @Before
    public void setUp() throws SQLException {
        dbProvider = new InMemoryDbProvider("test.sql");
    }

    @After
    public void cleanUp() {
        dbProvider.cleanUpDatabase();
    }

    @Test
    public void TestTableExistsAndHasThreeRecords() throws SQLException {
        // Given
        Statement statement = dbProvider.getConnection().createStatement();

        // When

        ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Test");

        // Then
        resultSet.next();
        int count = resultSet.getInt(1);
        assertEquals(3, count);
    }
}
