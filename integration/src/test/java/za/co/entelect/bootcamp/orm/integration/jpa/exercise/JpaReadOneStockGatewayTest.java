package za.co.entelect.bootcamp.orm.integration.jpa.exercise;

import za.co.entelect.bootcamp.orm.core.usecases.stock.readone.ReadOneStockGateway;
import za.co.entelect.bootcamp.orm.integration.core.stock.AbstractReadOneStockGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.exercise.StockJpaGateway;

public class JpaReadOneStockGatewayTest extends AbstractReadOneStockGatewayTest {
    @Override
    protected ReadOneStockGateway getClassUnderTest() throws Exception {
        return new StockJpaGateway();
    }
}
