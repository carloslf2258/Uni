package aula02;
import java.util.Scanner;
public class Ex5 {
    public static void main(String[] args) {
        double v1, d1, v2, d2, vm, t1, t2;

        Scanner sc = new Scanner(System.in);
        
        do {
            System.out.print("Introduza a velocidade 1 (v1): ");
            v1 = sc.nextDouble();
        } while (v1 <= 0);

        do {
            System.out.print("Introduza a distancia percorrida na primera etapa (d1): ");
            d1 = sc.nextDouble();
        } while (d1 <= 0);

        do {
            System.out.print("Introduza a velocidad na segunda etapa (v2): ");
            v2 = sc.nextDouble();
        } while (v2 <= 0);

        do {
            System.out.print("Introduza a distancia percorrida na segunda etapa (d2): ");
            d2 = sc.nextDouble();
        } while (d2 <= 0);
        
        //t1
        t1 = d1/v1;
        //t2
        t2 = d2/v2;



        //vm
        vm = (d1+d2)/(t1+t2);

        System.out.print("A velocidade media é: " + vm);

        sc.close();

}
}