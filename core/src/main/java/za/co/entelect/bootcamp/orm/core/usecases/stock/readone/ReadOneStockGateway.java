package za.co.entelect.bootcamp.orm.core.usecases.stock.readone;

import za.co.entelect.bootcamp.orm.core.entities.Stock;

public interface ReadOneStockGateway {
    Stock findById(Long id);
}
