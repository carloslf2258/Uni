package aula08.Ex1.Vehicles;

import aula08.Ex1.EngineType;
import aula08.Ex1.Interfaces.IElectricVehicle;
import aula08.Ex1.Interfaces.IFuelVehicle;

import java.util.Objects;

public class Bus extends Vehicle implements IFuelVehicle, IElectricVehicle {
    private final int boardNumber;
    private final int weight;
    private final int maxPassengers;
    private final EngineType engineType;

    private int nivelGasolina;
    private int battery;

    public Bus(String placa, String marca, String modelo, int potencia, int boardNumber, int weight, int maxPassengers, EngineType engineType) {
        super(placa, marca, modelo, potencia);
        if (weight <= 0)
            throw new IllegalArgumentException("Weight must be positive.");
        if (maxPassengers <= 0)
            throw new IllegalArgumentException("Max passengers must be positive.");
        this.boardNumber = boardNumber;
        this.weight = weight;
        this.maxPassengers = maxPassengers;
        this.engineType = engineType;
    }

    public int getBoardNumber() {
        return this.boardNumber;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getMaxPassengers() {
        return this.maxPassengers;
    }

    public EngineType getEngineType() {
        return this.engineType;
    }

    @Override
    public String toString() {
        return "Bus {" +
                "\n\tplate='" + this.getPlaca() + '\'' +
                ",\n\tbrand='" + this.getMarca() + '\'' +
                ",\n\tmodel='" + this.getModelo() + '\'' +
                ",\n\tpotency=" + this.getPotencia() +
                ",\n\tboardNumber=" + this.getBoardNumber() +
                ",\n\tweight=" + this.getWeight() +
                ",\n\tmaxPassengers=" + this.getMaxPassengers() +
                ",\n\tlastTripKm=" + this.ultimoTrajeto() +
                ",\n\tkm=" + this.distanciaTotal() +
                String.format(",\n\t%s=%d", this.engineType == EngineType.FUEL ? "fuelLevel" : "battery", this.engineType == EngineType.FUEL ? this.nivelGasolina : this.battery) +
                "\n}";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Bus bus = (Bus) o;
        return this.getBoardNumber() == bus.getBoardNumber() && this.getWeight() == bus.getWeight() && this.getMaxPassengers() == bus.getMaxPassengers() && this.getEngineType().equals(bus.getEngineType());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getBoardNumber(), this.getWeight(), this.getMaxPassengers());
    }

    @Override
    public int nivelAtualBateria() {
        return this.battery;
    }

    @Override
    public void carga(int percentagem) {
        if (this.engineType == EngineType.FUEL)
            return;
        this.battery = percentagem;
    }

    @Override
    public int nivelGasolina() {
        return this.nivelGasolina;
    }

    @Override
    public void encherGasolina(int level) {
        if (this.engineType == EngineType.ELECTRIC)
            return;
        this.nivelGasolina = level;
    }
}
