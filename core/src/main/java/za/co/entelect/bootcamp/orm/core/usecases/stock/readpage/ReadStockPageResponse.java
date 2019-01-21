package za.co.entelect.bootcamp.orm.core.usecases.stock.readpage;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCaseResponse;

@Getter
@Setter
public class ReadStockPageResponse implements UseCaseResponse {
    private Page<Stock> page;
}
