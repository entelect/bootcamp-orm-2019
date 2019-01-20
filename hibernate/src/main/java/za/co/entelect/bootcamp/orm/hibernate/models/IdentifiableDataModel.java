package za.co.entelect.bootcamp.orm.hibernate.models;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class IdentifiableDataModel {
    private Integer id;
    private Long version;
}
