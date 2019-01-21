package za.co.entelect.bootcamp.orm.integration.core.stock;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.stock.readpage.ReadStockPageGateway;
import za.co.entelect.bootcamp.orm.integration.common.InMemoryDbProvider;

import java.sql.SQLException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public abstract class AbstractReadStockPageGatewayTest {
    protected abstract ReadStockPageGateway getClassUnderTest() throws Exception;

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
    public void testPaging() throws Exception {
        // Given
        int pageSize = 5;
        int totalRecords = 9;

        // When
        Page<Stock> page1 = getClassUnderTest().findPage(0, pageSize);
        Page<Stock> page2 = getClassUnderTest().findPage(1, pageSize);

        // Then
        assertNotNull(page1);
        assertEquals(totalRecords, page1.getTotalRecords());
        assertEquals(pageSize, page1.getPageSize());
        assertEquals(pageSize, page1.getData().size());

        assertNotNull(page2);
        assertEquals(totalRecords, page2.getTotalRecords());
        assertEquals(pageSize, page2.getPageSize());
        assertEquals(totalRecords - pageSize, page2.getData().size());
    }
}
