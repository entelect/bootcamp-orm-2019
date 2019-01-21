package za.co.entelect.bootcamp.orm.core.usecases.stock.readpage;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseRequest;

@Getter
@Setter
public class ReadStockPageRequest implements UseCaseRequest {
    private int page;
    private int pageSize;
}
