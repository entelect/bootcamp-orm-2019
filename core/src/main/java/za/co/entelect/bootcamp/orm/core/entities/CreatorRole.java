package za.co.entelect.bootcamp.orm.core.entities;

import lombok.Getter;

@Getter
public enum CreatorRole {
    WRITER("Writer"),
    ARTIST("Artist"),
    COVER_ARTIST("Cover Artist");

    private String name;

    CreatorRole(String name) {
       this.name = name;
    }

    @Override
    public String toString() {
        return this.name;
    }

    public static CreatorRole fromString(String text) {
        for (CreatorRole role : CreatorRole.values()) {
            if (text.trim().equalsIgnoreCase(role.getName())) {
                return role;
            }
        }

        return null;
    }
}
