package za.co.entelect.bootcamp.orm.core.usecases.stock.save;

import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.core.usecases.common.Presenter;
import za.co.entelect.bootcamp.orm.core.usecases.common.UseCase;

public class SaveStock<Model> extends UseCase<Model, SaveStockRequest, SaveStockResponse> {
    private final SaveStockGateway gateway;

    public SaveStock(
            Presenter<Model, SaveStockResponse> presenter,
            SaveStockGateway gateway
    ) {
        super(presenter);

        this.gateway = gateway;
    }

    @Override
    public Model execute(SaveStockRequest request) {
        Stock stock = gateway.save(request.getStock());
        return presenter.present(buildResponse(stock));
    }

    private SaveStockResponse buildResponse(Stock stock) {
        SaveStockResponse response = new SaveStockResponse();
        response.setStock(stock);
        return response;
    }
}
