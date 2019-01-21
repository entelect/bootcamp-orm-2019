package za.co.entelect.bootcamp.orm.jpa.exercise.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;
import za.co.entelect.bootcamp.orm.core.entities.Stock;
import za.co.entelect.bootcamp.orm.jpa.exercise.models.StockDataModel;

import java.util.List;

@Mapper
public interface StockMapper {
    StockMapper INSTANCE = Mappers.getMapper(StockMapper.class);

    Stock toStock(StockDataModel stockDataModel);
    StockDataModel toStockDataModel(Stock stock);

    List<Stock> toStock(List<StockDataModel> stockDataModels);

    void updateDataModel(@MappingTarget StockDataModel stockDataModel, Stock stock);
}
