package za.co.entelect.bootcamp.orm.core.entities;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.common.Identifiable;

import java.time.LocalDate;
import java.util.Set;

@Getter
@Setter
public class Issue extends Identifiable {
    private String title;
    private String publisher;
    private LocalDate publicationDate;
    private Integer seriesNumber;
    private String description;

    private Set<Stock> stock;
}
