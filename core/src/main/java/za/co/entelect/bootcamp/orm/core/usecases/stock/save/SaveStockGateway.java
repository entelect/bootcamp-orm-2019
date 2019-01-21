package za.co.entelect.bootcamp.orm.core.usecases.stock.save;

import za.co.entelect.bootcamp.orm.core.entities.Stock;

public interface SaveStockGateway {
    Stock save(Stock issue);
}
