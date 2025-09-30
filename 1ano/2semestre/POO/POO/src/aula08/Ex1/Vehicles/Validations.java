package aula08.Ex1.Vehicles;

import java.util.regex.Pattern;

public class Validations {
    public static boolean validateVehiclePlaca(String placa) {
        return Pattern.matches("^[A-Z]{2}-\\d{2}-\\d{2}|\\d{2}-[A-Z]{2}-\\d{2}|\\d{2}-\\d{2}-[A-Z]{2}|[A-Z]{2}-\\d{2}-[A-Z]{2}|[A-Z]{2}-[A-Z]{2}-\\d{2}|\\d{2}-[A-Z]{2}-[A-Z]{2}$", placa);
    }
}
