package aula08.Ex1.Vehicles;
import aula08.Ex1.EngineType;
import aula08.Ex1.Interfaces.IElectricVehicle;
import aula08.Ex1.Interfaces.IFuelVehicle;

import java.util.Objects;

public class Car extends Vehicle implements IElectricVehicle, IFuelVehicle{
    //Valores novos para construtor
    private final int boardNumber;
    private final int trunkSize;
    private final EngineType engineType;

    private int fuelLevel;
    private int battery;

    //CONSTRUTOR
    public Car(String placa, String marca, String modelo, int potencia, int boardNumber, int trunkSize, EngineType engineType) {
        super(placa, marca, modelo, potencia);
        if (trunkSize <= 0)
            throw new IllegalArgumentException("Trunk size must be positive.");
        this.boardNumber = boardNumber;
        this.trunkSize = trunkSize;
        this.engineType = engineType;
        this.fuelLevel = 0;
        this.battery = 0;
    }


    public Car(Car car) {
        this(car.getPlaca(), car.getMarca(), car.getModelo(), car.getPotencia(), car.getBoardNumber(), car.getTrunkSize(), car.getEngineType());
    }

    public int getBoardNumber() {
        return this.boardNumber;
    }

    public int getTrunkSize() {
        return this.trunkSize;
    }

    public EngineType getEngineType() {
        return this.engineType;
    }

    @Override
    public String toString() {
        return "Car {" +
                "\n\tplate='" + this.getPlaca() + '\'' +
                ",\n\tMarca='" + this.getMarca() + '\'' +
                ",\n\tmodel='" + this.getModelo() + '\'' +
                ",\n\tpotency=" + this.getPotencia() +
                ",\n\tboardNumber=" + this.getBoardNumber() +
                ",\n\ttrunkSize=" + this.getTrunkSize() +
                ",\n\tlastTripKm=" + this.ultimoTrajeto() +
                ",\n\tkm=" + this.distanciaTotal() +
                String.format(",\n\t%s=%d", this.engineType == EngineType.FUEL ? "fuelLevel" : "battery", this.engineType == EngineType.FUEL ? this.fuelLevel : this.battery) +
                "\n}";
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Car car = (Car) o;
        return this.getBoardNumber() == car.getBoardNumber() && this.getTrunkSize() == car.getTrunkSize() && this.getEngineType().equals(car.getEngineType());
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), this.getBoardNumber(), this.getTrunkSize(), this.getEngineType());
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
        return this.fuelLevel;
    }

    @Override
    public void encherGasolina(int level) {
        if (this.engineType == EngineType.ELECTRIC)
            return;
        this.fuelLevel = level;
    }






























}
