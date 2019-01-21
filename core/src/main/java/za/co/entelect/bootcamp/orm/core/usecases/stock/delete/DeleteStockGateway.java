package za.co.entelect.bootcamp.orm.core.usecases.stock.delete;

import za.co.entelect.bootcamp.orm.core.entities.Stock;

public interface DeleteStockGateway {
    void delete(Stock stock);
}
