package aula03;

import java.util.Random;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n;
        String mensagem = "Pretende continuar? Prima (S)im ", resposta;
        ////Gera un número inteiro aleatorio entre 1 e 100
        Random random = new Random();
        int n_aleatorio = random.nextInt(100) + 1;

        


//Primeiro número do utilizador
        do {
            System.out.print("Insira um número entre 1 e 100 (inclusives): ");
            n = sc.nextInt();
        } while (n <= 0 || n > 100);
        


        
        int tentativas = 1;

        while (n != n_aleatorio) {
            if (n > n_aleatorio) {
                System.out.println("Muito alto");
            } else if (n < n_aleatorio) {
                System.out.println("Muito baixo");
            }
            tentativas += 1;
            System.out.println(mensagem);
            resposta = sc.next();
            if (resposta.equalsIgnoreCase("S")) {
                do {
                    System.out.print("Insira um número entre 1 e 100 (inclusives): ");
                    n = sc.nextInt();
                } while (n <= 0 || n > 100);
            } else {
                break;
            }
        }
        if (n == n_aleatorio) {
            System.out.println("Acertaste!");
        } else {
            System.out.println("Perdeste!");
        }
        System.out.println("A resposta é " + n_aleatorio + "!");
        System.out.println("Tentativas = " + tentativas);
        



        sc.close();
    }
    
}
