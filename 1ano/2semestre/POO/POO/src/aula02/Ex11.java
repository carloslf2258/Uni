package aula02;
import java.util.Scanner;
public class Ex11 {
  /*(VER MELHOR) Função que valida se a
  entrada cumpre com as condições, neste caso se 
  está entre 1 e 10 */  
    
    public static int lerInteiro(String mensagem, int min, int max) {
        Scanner sc = new Scanner(System.in);
        int valor;
        do {
            System.out.print(mensagem);
            //Caso seja inserida String, double, etc:
            while (!sc.hasNextInt()) {
                System.out.println("Valor inválido. " + mensagem);
                sc.next();
            }
            valor = sc.nextInt();
        } while (valor < min || valor > max);
        sc.close();
        return valor;
    }
//FUNÇÃO MAIN
    public static void main(String[] args) {
        int valor = lerInteiro("Digite um valor inteiro entre 1 e 10: ", 1, 10);
        System.out.println("O valor digitado foi: " + valor);
    }


}
