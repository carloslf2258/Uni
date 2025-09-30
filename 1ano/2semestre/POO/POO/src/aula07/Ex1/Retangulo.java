package aula07.Ex1;
import java.util.Objects;
public class Retangulo extends Forma{
    
    private double h;
    private double largo;

    public Retangulo(String color, double h, double largo){
        if (!Retangulo.valid(h, largo)){
            System.out.println("Conjunto de lados inválido");
        }
        this.h = h;
        this.largo = largo;
        this.setColor(color);
    }
    //COLOR
    public String getColor() {
        return this.color;
    }

    public void setColor(String color) {
        this.color = color;
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
        return ((this.h+this.largo)*2);
    }
    @Override
    public boolean equals(Forma Forma2) {
        if (Forma2 instanceof Retangulo Rect)
            return Objects.equals(this.color, Rect.color) &&  this.h == Rect.h && this.largo == Rect.largo;
        return false;
    }
    @Override
    public String toString() {
        return "Retangulo com altura e comprimento: " + this.h + ", " + this.largo;
    }
}
