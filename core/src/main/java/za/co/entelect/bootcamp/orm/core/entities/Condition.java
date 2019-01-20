package za.co.entelect.bootcamp.orm.core.entities;

import lombok.Getter;

@Getter
public enum Condition {
    POOR("Poor"),
    AVERAGE("Average"),
    FINE("Fine"),
    VERY_FINE("Very Fine");

    private String name;

    Condition(String name) {
        this.name = name;
    }

    public static Condition fromString(String text) {
        for (Condition condition : Condition.values()) {
            if (text.trim().equalsIgnoreCase(condition.getName())) {
                return condition;
            }
        }

        return null;
    }
}
