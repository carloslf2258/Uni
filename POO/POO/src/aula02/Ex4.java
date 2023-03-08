package aula02;
import java.util.Scanner;
import java.lang.Math;
public class Ex4 {
    public static void main(String[] args) {
        double Mi, J, valor_t;
        valor_t = 0;
        //Origem de scanner
        Scanner sc = new Scanner(System.in);

        //Montante inicial
        System.out.print("Introduza um montante inicial: ");
        Mi = sc.nextDouble();

        //taxa de juro mensal
        System.out.print("Introduza a taxa de juro mensal (percetangem): ");
        J = sc.nextDouble();
        J = J/100;


        //Formula
        valor_t += Mi;
        valor_t += Mi*(J);
        valor_t += Mi*(Math.pow(J, 2));
        valor_t += Mi*(Math.pow(J, 3));

        System.out.print("O valor total afinal de 3 meses é: " + valor_t);
        sc.close();
}
}