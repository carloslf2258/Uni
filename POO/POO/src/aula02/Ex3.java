package aula02;
import java.util.Scanner;
public class Ex3 {
    public static void main(String[] args) {
        double M, Ti, Tf, Q;

        //Origem de scanner
        Scanner sc = new Scanner(System.in);

        //Quantidade de água
        System.out.print("Introduza uma quantidade de água em kg: ");
        M = sc.nextDouble();

        //temp inicial
        System.out.print("Introduza a temperatura inicial: ");
        Ti = sc.nextDouble();

        //Temp Final
        System.out.print("Introduza a temperatura final: ");
        Tf = sc.nextDouble();

        //Formula
        Q = M*(Tf - Ti)*4184;

        System.out.print("A quantidade de energia em Joules é: " + Q);
        sc.close();
}
}
