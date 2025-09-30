package Exame_P.enums;

public enum ClientType {
    MEMBER, NORMAL;

    public static ClientType fromString(String string) {
        return switch (string) {
            case "MEMBER", "Member", "member" -> MEMBER;
            case "NORMAL", "Normal", "normal" -> NORMAL;
            default -> null;
        };
    }
}