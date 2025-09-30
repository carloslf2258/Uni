package Exame_P.enums;

public enum SpaceType {
    CAMPISMO, CARAVANISMO;

    public static SpaceType fromString(String string) {
        return switch (string) {
            case "CAMPISMO", "Campismo", "campismo" -> CAMPISMO;
            case "CARAVANISMO", "Caravanismo", "caravanismo" -> CARAVANISMO;
            default -> null;
        };
    }
}
