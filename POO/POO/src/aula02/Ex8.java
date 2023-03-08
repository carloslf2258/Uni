package aula02;
import java.util.Scanner;
import java.lang.Math;
public class Ex8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double A, B, C, angulo;

        //A
        do {
            System.out.print("Introduza o cateto A: ");
            A = sc.nextDouble();
        } while (A <= 0);
        //B
        do {
            System.out.print("Introduza o cateto B: ");
            B = sc.nextDouble();
        } while (B <= 0);

        //hipotenusa
        C = Math.sqrt(Math.pow(A, 2) + Math.pow(B, 2));
        System.out.println("A hipotenusa é: " + C);

        //degrees between A and C
        angulo = Math.toDegrees(Math.asin(A / C));
        System.out.println("O angulo entre A e C(hipotenusa) é: " + angulo);

        sc.close();

}
}