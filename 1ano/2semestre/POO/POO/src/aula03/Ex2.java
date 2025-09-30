package aula03;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int m;
        double taxaJuros;

        // pedir ao usuário o montante investido e a taxa de juros mensal
        
        do {
            System.out.print("Digite o montante investido (em múltiplos de 1000): ");
            m = sc.nextInt();
        } while (m <= 0 || m % 100 != 0);
        
        do {
            System.out.print("Digite a taxa de juros mensal (entre 0 e 5%): ");
            taxaJuros = sc.nextDouble();
        } while (taxaJuros < 0 || taxaJuros > 5 );
        
        
        taxaJuros /= 100;
        //Testar
  //      System.out.println("Prova de montante investido: " + m);
  //      System.out.println("Prova de taxaJuros: " + taxaJuros);


 
        // calcular e imprimir o valor mensal do fundo nos próximos 12 meses
        for (int i = 1; i <= 12; i++) {
            double juros = m * taxaJuros;
            m += juros;
            System.out.println("Mês " + i + ": " + m);
        }





        sc.close();
    }
}
