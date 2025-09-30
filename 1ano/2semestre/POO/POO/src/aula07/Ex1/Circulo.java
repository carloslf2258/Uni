package aula07.Ex1;

import java.util.Objects;

public class Circulo extends Forma{
 //   Scanner sc = new Scanner(System.in);
    
    private double raio;
    
    public Circulo(String color, double raio) {
        if (!Circulo.valido(raio)){
            System.out.println("Raio inválido");
        }
        this.raio = raio;
        this.setColor(color);
    }

    public String getColor() {
        return this.color;
    }
    public void setColor(String color) {
        this.color = color;
    }

    public double getRaio() {
        return raio;
    }
    
    public double getArea() {
        return Math.PI * raio * raio;
    }
    
     public double getPerimetro() {
        return 2 * Math.PI * raio;
    }

    public static boolean valido(double raio){
        return raio >= 0;
    }

    @Override
    public boolean equals(Forma obj) {
        if (obj instanceof Circulo s2Circ)
            return Objects.equals(this.color, s2Circ.color) && this.raio == s2Circ.raio;
        return false;
}
    @Override
    public String toString() {
        return "Circulo com raio " + this.raio;
    }
    

    
}