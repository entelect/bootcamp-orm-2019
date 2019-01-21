package za.co.entelect.bootcamp.orm.integration.jpa.exercise;

import za.co.entelect.bootcamp.orm.core.usecases.stock.readpage.ReadStockPageGateway;
import za.co.entelect.bootcamp.orm.integration.core.stock.AbstractReadStockPageGatewayTest;
import za.co.entelect.bootcamp.orm.jpa.exercise.StockJpaGateway;

public class JpaReadStockPageGatewayTest extends AbstractReadStockPageGatewayTest {
    @Override
    protected ReadStockPageGateway getClassUnderTest() throws Exception {
        return new StockJpaGateway();
    }
}
