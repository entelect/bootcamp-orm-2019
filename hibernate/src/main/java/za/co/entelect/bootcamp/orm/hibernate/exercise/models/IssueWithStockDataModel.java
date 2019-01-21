package za.co.entelect.bootcamp.orm.hibernate.exercise.models;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.hibernate.common.models.IdentifiableDataModel;

import java.time.LocalDate;
import java.util.Set;

@Getter
@Setter
public class IssueWithStockDataModel extends IdentifiableDataModel {
    private String title;
    private String publisher;
    private LocalDate publicationDate;
    private Short seriesNumber;
    private String description;

    private Set<StockDataModel> stock;
}
