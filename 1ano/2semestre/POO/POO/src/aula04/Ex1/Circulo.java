package aula04.Ex1;
//import java.util.Scanner;

public class Circulo {
 //   Scanner sc = new Scanner(System.in);
    
    private double raio;
    
    public Circulo(double raio) {
        if (!Circulo.valido(raio)){
            System.out.println("Raio inválido");
        }
        this.raio = raio;
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


    
}
