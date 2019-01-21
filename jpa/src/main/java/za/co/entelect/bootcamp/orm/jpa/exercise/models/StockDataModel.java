package za.co.entelect.bootcamp.orm.jpa.exercise.models;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.entities.Condition;
import za.co.entelect.bootcamp.orm.jpa.common.models.IdentifiableDataModel;
import za.co.entelect.bootcamp.orm.jpa.example.models.IssueDataModel;

import java.math.BigDecimal;

// TODO: Exercise 3 (JPA) - Still needs mapping annotations - see comic.sql in integration for DB schema

@Getter
@Setter
public class StockDataModel extends IdentifiableDataModel {
    private Condition condition;
    private Short availableQty;
    private BigDecimal price;
    private String comments;
    private String coverImagePath;

    private IssueDataModel issue;
}
