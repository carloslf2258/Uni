package aula02;
import java.util.Scanner;
public class Ex9 {
    public static void main(String[] args) {
  //Imprime contagem decrescente e 
  //quando há um múltiplo de 10 muda de linha
       
        double n;

        Scanner sc = new Scanner(System.in);
        do {
            System.out.print("Insira um número positivo: ");
            n = sc.nextDouble();
        } while (n <= 0);

        for(int i = (int) n ; i >= 0; i--)
            if (i%10 == 0)
                System.out.println(i);
            else
                System.out.print(i + ",");



        sc.close();
}       
}


/*DUVIDA: Por que não?
for(n ; n >= 0; n--) */