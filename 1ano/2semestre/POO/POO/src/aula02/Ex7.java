package aula02;
import java.util.Scanner;
import java.lang.Math;
public class Ex7 {
    public static void main(String[] args) {
        double x1, y1, x2, y2, d;

        Scanner sc = new Scanner(System.in);
        //x1
        System.out.print("Introduza o x do p1: ");
        x1 = sc.nextDouble();
        //y1
        System.out.print("Introduza o y do p1: ");
        y1 = sc.nextDouble();
        //x2
        System.out.print("Introduza o x do p2: ");
        x2 = sc.nextDouble();
        //y2
        System.out.print("Introduza o y do p2: ");
        y2 = sc.nextDouble();

        //Distância entre p1 e p2
        d = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));

        System.out.println("A distância entre p1 e p2 é: " + d);



        sc.close();

}
}