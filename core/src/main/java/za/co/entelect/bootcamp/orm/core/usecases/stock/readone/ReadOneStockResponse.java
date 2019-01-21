package za.co.entelect.bootcamp.orm.core.usecases.stock.readone;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseResponse;

@Getter
@Setter
public class ReadOneStockResponse implements UseCaseResponse {
    private Stock stock;
}
