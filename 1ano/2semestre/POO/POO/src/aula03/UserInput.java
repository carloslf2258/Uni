package aula03;
import java.util.Scanner;


public class UserInput {
    static Scanner sc = new Scanner(System.in);
    
    public static boolean esPrimo(int numero) {
        if (numero <= 1) {
            return false;
        }
        for (int i = 2; i <= numero / 2; i++) {
            if (numero % i == 0) {
                return false;
            }
        }
        return true;
    }


    public static int Int_Input_valid_positive(){
        int n;
        do {
            System.out.print("Insira um número positivo: ");
            while (!sc.hasNextInt()) {
                System.out.print("Insira um número positivo: ");
                sc.next();
            }
            n = sc.nextInt();
        } while (n <= 0);
        return n;
    }

    public static double Double_Input_valid_positive(){
        double n;
        do {
            System.out.print("Insira um número positivo: ");
            while (!sc.hasNextDouble()) {
                System.out.print("Insira um número positivo: ");
                sc.next();
            }
            n = sc.nextDouble();
        } while (n <= 0);
        return n;
    }


    public static int media_notasPeT(double notaT, double notaP){
        double media;
        if (notaT < 7 || notaP < 7)
            return 66;
        media = 0.4 * notaT + 0.6 * notaP;
        return (int) Math.round(media);
    }

    public static int dias_do_mes(int mes, int ano){
        //Dias do mês sem considerar ano bissexto
        int[] diasMes = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        //Verificar se o ano é bissexto
        if ((ano % 4 == 0 && ano % 100 != 0) || ano % 400 == 0) {
            diasMes[1] = 29;
    }
    return diasMes[mes - 1];
}


    
    
}
