package za.co.entelect.bootcamp.orm.core.usecases.stock.readone;

import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.common.Presenter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCase;

public class ReadOneStock<Model> extends UseCase<Model, ReadOneStockRequest, ReadOneStockResponse> {
    private final ReadOneStockGateway gateway;

    public ReadOneStock(
            Presenter<Model, ReadOneStockResponse> presenter,
            ReadOneStockGateway gateway
    ) {
        super(presenter);

        this.gateway = gateway;
    }

    @Override
    public Model execute(ReadOneStockRequest request) {
        Stock stock = gateway.findById(request.getStockId());
        return presenter.present(buildResponse(stock));
    }

    private ReadOneStockResponse buildResponse(Stock stock) {
        ReadOneStockResponse response = new ReadOneStockResponse();
        response.setStock(stock);
        return response;
    }
}
