package za.co.entelect.bootcamp.orm.hibernate.example.models;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.hibernate.common.models.IdentifiableDataModel;

import java.time.LocalDate;

@Getter
@Setter
public class IssueDataModel extends IdentifiableDataModel {
    private String title;
    private String publisher;
    private LocalDate publicationDate;
    private Short seriesNumber;
    private String description;
}
