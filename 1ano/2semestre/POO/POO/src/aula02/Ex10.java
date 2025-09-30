package aula02;
import java.util.Scanner;
public class Ex10 {
    public static void main(String[] args) {
  /*Lê um conjunto de números e diz qual foi o
  max, min, a media, soma total e quantidade de números */      
        
        Scanner sc = new Scanner(System.in);
        double n, m, max, min, media;
        int cont = 1;

        System.out.print("Introduza um número, acabará quando introduzir o primeiro: ");
        n = sc.nextDouble();
        double total = n;
        max = min = n;



        do {
            System.out.print("Introduza um número, acabará quando introduzir o primeiro: ");
            m = sc.nextDouble();
            cont += 1;
            if (m > max)
                max = m;
            if (m < min)
                min = m;
            total += m;
        } while (m != n);

        media = total / cont;
        System.out.println("Valor máximo: " + max);
        System.out.println("Valor mínimo: " + min);
        System.out.println("Média: " + media);
        System.out.println("Total de números lidos: " + cont);


        sc.close();
}
}