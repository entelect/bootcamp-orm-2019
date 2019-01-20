package za.co.entelect.bootcamp.orm.core.entities;

import za.co.entelect.bootcamp.orm.core.common.Identifiable;

public class Creator extends Identifiable {
    private String name;
    private String email;
    private Country countryOfOrigin;
    private byte[] taxReferenceNumber;
}
