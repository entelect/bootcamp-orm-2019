import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

public class LombokNonLombokIssue {
}

class VanillaIssue implements Serializable {
    public static long serialVersionUID = 1L;

    private String name;
    private boolean alive;

    public VanillaIssue() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isAlive() {
        return alive;
    }

    public void setAlive(boolean alive) {
        this.alive = alive;
    }
}

@NoArgsConstructor
@Getter
@Setter
class LombokIssue implements Serializable {
    public static long serialVersionUID = 1L;

    private String name;
    private boolean alive;
}
