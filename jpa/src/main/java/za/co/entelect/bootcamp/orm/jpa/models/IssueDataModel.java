package za.co.entelect.bootcamp.orm.jpa.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.time.LocalDate;

@Entity
@Table(name = "Issues")
@AttributeOverride(name = "id", column = @Column(name = "IssueID"))
@Getter
@Setter
public class IssueDataModel extends IdentifiableDataModel {
    private String title;
    private String description;
    private String publisher;
    private Short seriesNumber;

    @Column
    private LocalDate publicationDate;
}
