package za.co.entelect.bootcamp.orm.core.usecases.stock.save;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseRequest;

@Getter
@Setter
public class SaveStockRequest implements UseCaseRequest {
    private Stock stock;
}
