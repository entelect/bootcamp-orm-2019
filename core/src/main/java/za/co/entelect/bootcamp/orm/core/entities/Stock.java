package za.co.entelect.bootcamp.orm.core.entities;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.common.Identifiable;

@Getter
@Setter
public class Stock extends Identifiable {
    private Issue issue;
}
