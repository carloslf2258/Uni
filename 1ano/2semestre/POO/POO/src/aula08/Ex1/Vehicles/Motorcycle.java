package aula08.Ex1.Vehicles;

import aula08.Ex1.Interfaces.IFuelVehicle;
import java.util.Objects;

public class Motorcycle extends Vehicle implements IFuelVehicle {
    private final MotorcycleType tipo;

    private int nivelGasolina;

    public Motorcycle(String placa, String marca, String modelo, int potencia, MotorcycleType tipo) {
        super(placa, marca, modelo, potencia);
        this.tipo = tipo;
        this.nivelGasolina = 0;
    }

    public Motorcycle(Motorcycle motorcycle) {
        this(motorcycle.getPlaca(), motorcycle.getMarca(), motorcycle.getModelo(), motorcycle.getPotencia(), motorcycle.getType());
    }

    public MotorcycleType getType() {
        return this.tipo;
    }

    @Override
    public String toString() {
        return "Motorcycle {" +
        "\n\tplate='" + this.getPlaca() + '\'' +
        ",\n\tbrand='" + this.getMarca() + '\'' +
        ",\n\tmodel='" + this.getModelo() + '\'' +
        ",\n\tpotency=" + this.getPotencia() +
        ",\n\ttype=" + this.getType().toString() +
        ",\n\tlastTripKm=" + this.ultimoTrajeto() +
        ",\n\tkm=" + this.distanciaTotal() +
        ",\n\tfuelLevel=" + this.nivelGasolina() +
        "\n}";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Motorcycle that = (Motorcycle) o;
        return this.getType() == that.getType();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getType());
    }

    @Override
    public int nivelGasolina() {
        return this.nivelGasolina;
    }

    @Override
    public void encherGasolina(int level) {
        this.nivelGasolina = level;
    }

    public enum MotorcycleType {
        SPORT, TOURING;

        public String toString() {
            return switch (this) {
                case SPORT -> "Sport";
                case TOURING -> "Touring";
            };
        }

        public static MotorcycleType fromString(String s) {
            return switch (s) {
                case "SPORT", "Sport", "sport" -> SPORT;
                case "TOURING", "Touring", "touring" -> TOURING;
                default -> throw new IllegalArgumentException("Invalid MotorcycleType: " + s);
            };
        }
    }
}
