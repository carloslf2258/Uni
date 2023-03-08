package aula04.Ex1;
import java.util.Scanner;
public class master {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double raio, lado1, lado2, lado3, h, largo;
        
//Exemplo de circulo
        Circulo circulo1 = new Circulo(5.0);
        System.out.println("Circulo1 - Raio: " + circulo1.getRaio());
        System.out.printf("Circulo1 - Area: %.3f\n", circulo1.getArea());
        System.out.printf("Circulo1 - Perimetro: %.3f\n\n", circulo1.getPerimetro());
        
//Circulo do utilizador
        do {
            System.out.print("Insira um raio de um circulo: ");
            raio = sc.nextDouble();
        } while (!Circulo.valido(raio));

        Circulo circulo2 = new Circulo(raio);
        System.out.println("Circulo2 - Raio: " + circulo2.getRaio());
        System.out.printf("Circulo2 - Area: %.3f\n", circulo2.getArea());
        System.out.printf("Circulo2 - Perimetro: %.3f\n\n", circulo2.getPerimetro());



        //Triangulo

        //EXEMPLO
        //Exemplo de triangulo
        Triangulo t1 = new Triangulo(4, 5, 7);
        System.out.println("Triangulo1 - lados: " + t1.getLado1() + "/" + t1.getLado2() + "/" + t1.getLado3());
        System.out.printf("Triangulo1 - Area: %.3f\n", t1.getArea());
        System.out.printf("Triangulo1 - Perimetro: %.3f\n\n", t1.getPerimetro());
        

        do {
            System.out.print("Insira lado1, lado2 e lado3 de um triangulo, nº positivos: ");
            lado1 = sc.nextDouble();
            lado2 = sc.nextDouble();
            lado3 = sc.nextDouble();
        } while (!Triangulo.valido(lado1, lado2, lado3));

        //Triangulo do utilizador
        Triangulo t2 = new Triangulo(lado1, lado2, lado3);
        System.out.println("Triangulo2 - lados: " + t2.getLado1() + "/" + t2.getLado2() + "/" + t2.getLado3());
        System.out.printf("Triangulo2 - Area: %.3f\n", t2.getArea());
        System.out.printf("Triangulo2 - Perimetro: %.3f\n\n", t2.getPerimetro());
        
        
        
        
        //RETANGULO
        do {
            System.out.print("Insira altura e largura de um retângulo: ");
            h = sc.nextDouble();
            largo = sc.nextDouble();
            
        } while (!Retangulo.valid(h, largo));
        
        Retangulo rect2 = new Retangulo(h, largo);
        System.out.println("Retangulo2 - altura e largura: " + rect2.getAltura() + "/" + rect2.getLargura());
        System.out.printf("Retangulo2 - Area: %.3f\n", rect2.getArea());
        System.out.printf("Retangulo2 - Perimetro: %.3f\n\n", rect2.getPerimetro());
        
        
        
        
        
        sc.close();
    }
}
