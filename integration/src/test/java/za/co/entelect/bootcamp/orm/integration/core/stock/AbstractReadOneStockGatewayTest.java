package za.co.entelect.bootcamp.orm.integration.core.stock;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.stock.readone.ReadOneStockGateway;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;

import java.sql.SQLException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;


public abstract class AbstractReadOneStockGatewayTest {
    protected abstract ReadOneStockGateway getClassUnderTest() throws Exception;

    protected InMemoryDbProvider dbProvider;

    @Before
    public void setUp() throws SQLException {
        dbProvider = new InMemoryDbProvider("comic.sql", "MODE=MSSQLServer");
    }

    @After
    public void tearDown() throws Exception {
        dbProvider.cleanUpDatabase();
    }

    @Test
    public void testFindById() throws Exception {
        // Given
        Long id = 1L;

        // When
        Stock stock = getClassUnderTest().findById(id);

        // Then
        assertNotNull(stock);
        assertEquals(id, stock.getId());
        assertNotNull(stock.getIssue());
    }

    @Test(expected = NotFoundException.class)
    public void testFindByIdCanThrowNotFoundException() throws Exception {
        // Given
        Long id = 100L;

        // When Then
        getClassUnderTest().findById(id);
    }
}
