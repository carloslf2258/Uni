package aula08.Ex1.Vehicles;
import aula08.Ex1.Interfaces.IKmPercorridos;

import java.util.Objects;

public abstract class Vehicle implements IKmPercorridos{
    //Valores para construtor
    private final String placa;
    private final String marca;
    private final String modelo;
    private final int potencia;

    private int km_ultima_viagem;
    private int km;

    //CONSTRUTOR
    public Vehicle(String placa, String marca, String modelo, int potencia) {
        if (!Validations.validateVehiclePlaca(placa))
            throw new IllegalArgumentException("Invalid plate!");
        if (potencia <= 0)
            throw new IllegalArgumentException("Potency must be positive");
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this.km_ultima_viagem = 0;
        this.km = 0;
    }
    
    //GETTERS
    public String getPlaca() {
        return this.placa;
    }

    public String getMarca() {
        return this.marca;
    }

    public String getModelo() {
        return this.modelo;
    }

    public int getPotencia() {
        return this.potencia;
    }

    @Override
    public void trajeto(int km) {
        this.km_ultima_viagem = km;
        this.km += km;
    }

    @Override
    public int ultimoTrajeto() {
        return km_ultima_viagem;
    }

    @Override
    public int distanciaTotal() {
        return km;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Vehicle vehicle = (Vehicle) o;
        return this.getPotencia() == vehicle.getPotencia() && this.km_ultima_viagem == vehicle.km_ultima_viagem && this.km == vehicle.km && this.getPlaca().equals(vehicle.getPlaca()) && this.getMarca().equals(vehicle.getMarca()) && this.getModelo().equals(vehicle.getModelo());
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.getPlaca(), this.getMarca(), this.getModelo(), this.getPotencia(), this.km_ultima_viagem, this.km);
    }





















}
