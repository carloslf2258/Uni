package aula02;
import java.util.Scanner;
public class Ex2 {
    public static void main(String[] args) {
    double C, F;
    Scanner scan = new Scanner(System.in);
    System.out.print("Introduz uma temperatura em Celcius: ");
    C = scan.nextDouble();
    F = 1.8*C + 32;
    System.out.println("A temp em Farenheit é: " + F);
    scan.close();
    
}
}
