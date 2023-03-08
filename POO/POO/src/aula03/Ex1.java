package aula03;
//import aula03.UserInput;  Se estivesse noutro ficheiro era preciso
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
//Programa lê um valor positivo e imprime os valores primos até o numero n
        int n;
        int j = 0;
    Scanner sc = new Scanner(System.in);

        // n validado - Criei uma função para isto no UserInput
     /*   do {
            System.out.print("Insira um número positivo: ");
            n = sc.nextInt();
        } while (n <= 0);
        */
        n = UserInput.Int_Input_valid_positive();

        //identificar números primos
        for (int i = 2; n >= i ; i++) {
       
            if (UserInput.esPrimo(i)) {
                j += i;
        }
        
        
    }
        System.out.println("A soma é: " + j);;
        

    sc.close();

}
}