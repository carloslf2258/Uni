package aula08.Ex2.Enums;

public enum AlimentOrigin {
    ANIMAL, VEGAN;

    @Override
    public String toString() {
        return switch (this) {
            case ANIMAL -> "ANIMAL";
            case VEGAN -> "VEGAN";
        };
    }
}
