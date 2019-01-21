package za.co.entelect.bootcamp.orm.core.usecases.stock.readone;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseRequest;

@Getter
@Setter
public class ReadOneStockRequest implements UseCaseRequest {
    private Long stockId;
}
