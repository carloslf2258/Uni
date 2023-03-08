package aula04.Ex1;

public class Triangulo {
    private double lado1;
    private double lado2;
    private double lado3;

    //Construtor
    public Triangulo(double l1, double l2, double l3){
        if (!Triangulo.valido(l1, l2, l3)){
            
            

        } else {
            this.lado1 = l1;
            this.lado2 = l2;
            this.lado3 = l3;
        }
        
    }

    public double getLado1() {
        return lado1;
    }

    public double getLado2() {
        return lado2;
    }

    public double getLado3() {
        return lado3;
    }

    public double getPerimetro() {
        return lado1 + lado2 + lado3;
    }

    public double getArea(){
        double p = (lado1 + lado2 + lado3) / 2;
        return Math.sqrt(p * (p - lado1) * (p - lado2) * (p - lado3));
    }


    //Função de validação, desigualdade triangular e todos lados maiores do que 0
    public static boolean valido(double l1, double l2, double l3) {
        if (l1 + l2 > l3 && l2 + l3 > l1 && l3 + l1 > l2 && (l1>=0 && l2>=0 && l3>=0)) {
            return true;
        } else {
            return false;
        }
    }


}
