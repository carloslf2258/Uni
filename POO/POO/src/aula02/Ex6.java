package aula02;
import java.util.Scanner;
public class Ex6 {
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza um número de segundos: ");
        int seg = sc.nextInt();

        //horas
        int horas = seg/3600;
        //min
        seg -= horas*3600;
        int min = seg/60;

        seg -= min*60;

        System.out.printf("O tempo é equivalente a: %02d:%02d:%02d", horas, min, seg);

        sc.close();
}
}