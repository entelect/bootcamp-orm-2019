package za.co.entelect.bootcamp.orm.core.entities;

import lombok.Getter;
import lombok.Setter;
import za.co.entelect.bootcamp.orm.core.common.Identifiable;

import java.math.BigDecimal;

@Getter
@Setter
public class Stock extends Identifiable {
    private Condition condition;
    private Short availableQty;
    private BigDecimal price;
    private String comments;
    private String coverImagePath;

    private Issue issue;
}
