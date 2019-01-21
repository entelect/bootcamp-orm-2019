package za.co.entelect.bootcamp.orm.integration.jpa.exercise;

import za.co.entelect.bootcamp.orm.core.usecases.stock.readone.ReadOneStockGateway;
import za.co.entelect.bootcamp.orm.core.usecases.stock.save.SaveStockGateway;
import za.co.entelect.bootcamp.orm.integration.core.stock.AbstractSaveStockGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.exercise.StockJpaGateway;

import java.sql.SQLException;

public class JpaSaveStockGatewayTest extends AbstractSaveStockGatewayTest {
    private StockJpaGateway gateway;

    @Override
    public void setUp() throws SQLException, Exception {
        super.setUp();

        this.gateway = new StockJpaGateway();
    }

    @Override
    protected SaveStockGateway getClassUnderTest() throws Exception {
        return gateway;
    }

    @Override
    protected ReadOneStockGateway getReadGateway() throws Exception {
        return gateway;
    }
}
