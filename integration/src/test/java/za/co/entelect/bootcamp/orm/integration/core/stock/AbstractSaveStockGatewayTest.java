package za.co.entelect.bootcamp.orm.integration.core.stock;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.entities.Condition;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.stock.readone.ReadOneStockGateway;
import za.co.entelect.bootcamp.orm.core.usecases.stock.save.SaveStockGateway;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static org.junit.Assert.*;


public abstract class AbstractSaveStockGatewayTest {
    protected abstract SaveStockGateway getClassUnderTest() throws Exception;
    protected abstract ReadOneStockGateway getReadGateway() throws Exception;

    protected InMemoryDbProvider dbProvider;

    @Before
    public void setUp() throws SQLException, Exception {
        dbProvider = new InMemoryDbProvider("comic.sql", "MODE=MSSQLServer");
    }

    @After
    public void tearDown() throws Exception {
        dbProvider.cleanUpDatabase();
    }

    @Test
    public void testCreate() throws Exception {
        // Given
        Issue issue = new Issue();
        issue.setId(2L);

        // When
        Stock stock = new Stock();
        stock.setIssue(issue);
        stock.setAvailableQty((short) 2);
        stock.setCondition(Condition.Average);
        stock.setCoverImagePath("C:\\Images\\batman.png");
        stock.setPrice(BigDecimal.valueOf(100.0));
        stock.setComments("For great justice!");
        stock = getClassUnderTest().save(stock);

        // Then
        assertNotNull(stock.getId());

        assertEquals(10L, (long) countRecords());
    }

    @Test
    public void testUpdate() throws Exception {
        // Given
        Stock stock = getReadGateway().findById(1L);

        // When
        stock.setComments("Test");
        stock.setPrice(new BigDecimal("123.00"));
        stock.setAvailableQty((short) 1);
        stock.setCoverImagePath("C:\\Images\\superman.png");
        stock.setCondition(Condition.Poor);
        stock = getClassUnderTest().save(stock);

        // Then
        assertValues(stock);
    }

    Long countRecords() throws SQLException {
        Statement statement = dbProvider.getConnection().createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Stock");

        if (!resultSet.next()) {
            return 0L;
        }

        return resultSet.getLong(1);
    }

    protected void assertValues(Stock saved) throws SQLException {
        String query = "SELECT condition, availableQty, price, comments, coverImagePath FROM Stock WHERE StockReferenceID = ?";
        PreparedStatement statement = dbProvider.getConnection().prepareStatement(query);
        statement.setLong(1, saved.getId());

        ResultSet resultSet = statement.executeQuery();
        resultSet.next();

        assertTrue(resultSet.getString("condition").contains(saved.getCondition().name()));
        assertEquals((short) saved.getAvailableQty(), resultSet.getShort("availableQty"));
        assertEquals(saved.getPrice(), resultSet.getBigDecimal("price"));
        assertEquals(saved.getComments(), resultSet.getString("comments"));
        assertEquals(saved.getCoverImagePath(), resultSet.getString("coverImagePath"));
    }
}
