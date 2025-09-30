package aula08.Ex1.Vehicles;

import aula08.Ex1.Interfaces.IFuelVehicle;

import java.util.Objects;

public class Truck extends Vehicle implements IFuelVehicle {
    private final int boardNumber;
    private final int weight;
    private final int maxWeight;
    private int nivelGasolina;

    public Truck(String Placa, String Marca, String modelo, int potencia, int boardNumber, int weight, int maxWeight) {
        super(Placa, Marca, modelo, potencia);
        if (weight <= 0)
            throw new IllegalArgumentException("Weight must be positive.");
        if (maxWeight <= 0)
            throw new IllegalArgumentException("Max weight must be positive.");
        this.boardNumber = boardNumber;
        this.weight = weight;
        this.maxWeight = maxWeight;
        this.nivelGasolina = 0;
    }

    public int getBoardNumber() {
        return this.boardNumber;
    }

    public int getWeight() {
        return this.weight;
    }

    public int getMaxWeight() {
        return this.maxWeight;
    }

    @Override
    public String toString() {
        return "Truck {" +
                "\n\tPlaca='" + this.getPlaca() + '\'' +
                ",\n\tMarca='" + this.getMarca() + '\'' +
                ",\n\tmodel='" + this.getModelo() + '\'' +
                ",\n\tpotency=" + this.getPotencia() +
                ",\n\tboardNumber=" + this.getBoardNumber() +
                ",\n\tweight=" + this.getWeight() +
                ",\n\tmaxWeight=" + this.getMaxWeight() +
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
        Truck truck = (Truck) o;
        return this.getBoardNumber() == truck.getBoardNumber() && this.getWeight() == truck.getWeight() && this.getMaxWeight() == truck.getMaxWeight();
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getBoardNumber(), this.getWeight(), this.getMaxWeight());
    }

    @Override
    public int nivelGasolina() {
        return this.nivelGasolina();
    }

    @Override
    public void encherGasolina(int level) {
        this.nivelGasolina = level;
    }
}
