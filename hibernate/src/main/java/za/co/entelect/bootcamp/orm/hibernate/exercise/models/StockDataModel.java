package za.co.entelect.bootcamp.orm.hibernate.exercise.models;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.entities.Condition;
import za.co.entelect.bootcamp.orm.hibernate.common.models.IdentifiableDataModel;

import java.math.BigDecimal;

@Getter
@Setter
public class StockDataModel extends IdentifiableDataModel {
    private Condition condition;
    private Short availableQty;
    private BigDecimal price;
    private String comments;
    private String coverImagePath;
}
