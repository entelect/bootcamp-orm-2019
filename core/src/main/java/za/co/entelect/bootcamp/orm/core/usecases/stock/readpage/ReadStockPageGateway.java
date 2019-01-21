package za.co.entelect.bootcamp.orm.core.usecases.stock.readpage;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Stock;

public interface ReadStockPageGateway {
    Page<Stock> findPage(int page, int pageSize);
}
