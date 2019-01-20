package za.co.entelect.bootcamp.orm.core.common;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class Identifiable {
    private Long id;
    private Long version;
}
