package aula04.Ex1;

public class Retangulo {
    
    private double h;
    private double largo;

    public Retangulo(double h, double largo){
        if (!Retangulo.valid(h, largo)){
            System.out.println("Conjunto de lados inválido");
        }
        this.h = h;
        this.largo = largo;
    }

    public static boolean valid(double h, double l){
        if (h >= 0 && l >= 0){
            return true;
        } else {
            return false;
        }
    }

    public double getAltura(){
        return h;
    }
    public double getLargura(){
        return largo;
    }

    public double getArea(){
        return (h*largo);
    }

    public double getPerimetro(){
        h *= 2;
        largo *= 2;
        return (h+largo);
    }

}
