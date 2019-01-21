package za.co.entelect.bootcamp.orm.core.usecases.stock.readpage;

import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.common.Presenter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCase;

public class ReadStockPage<Model> extends UseCase<Model, ReadStockPageRequest, ReadStockPageResponse> {
    private final ReadStockPageGateway gateway;

    public ReadStockPage(
            Presenter<Model, ReadStockPageResponse> presenter,
            ReadStockPageGateway gateway
    ) {
        super(presenter);

        this.gateway = gateway;
    }

    @Override
    public Model execute(ReadStockPageRequest request) {
        Page<Stock> page = gateway.findPage(request.getPage(), request.getPageSize());
        return presenter.present(buildResponse(page));
    }

    private ReadStockPageResponse buildResponse(Page<Stock> page) {
        ReadStockPageResponse response = new ReadStockPageResponse();
        response.setPage(page);
        return response;
    }
}
