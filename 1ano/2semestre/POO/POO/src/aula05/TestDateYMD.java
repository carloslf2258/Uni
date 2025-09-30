package aula05;

import java.util.Scanner;

public class TestDateYMD {
    static Scanner sc = new Scanner(System.in);
    
    public static void main(String[] args) {
        int opcao;
        DateYMD date = null;
        do {
            //MENU OPÇÕES
            System.out.println("Data operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("0 - exit");
            opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    //Pedir valores
                    System.out.println("Introduza o nº do dia ");
                    int day = sc.nextInt();
                    System.out.println("Insira o nº do mês (1-12): ");
                    int month = sc.nextInt();
                    System.out.println("Insira o nº do ano: ");
                    int year = sc.nextInt();
                    //Criar data
                    date = new DateYMD(day, month, year);
                    break;
                case 2:
                    //Print de valores da data
                    System.out.println(date.toString());
                    break;
                case 3:
                    if (date == null) {
                        System.out.println("Por favor, crie uma data primeiro!");
                    } else {
                        //Incrementa dia
//Por que não "date.increment();"? Resposta: Pq increment foi definida esperando argumentos nos ().
                        date.increment(date.getDay(), date.getMonth(), date.getYear());
                        System.out.println(date.toString());
                    }
                    break;
                case 4:
                    if (date == null) {
                        System.out.println("Por favor, crie uma data primeiro!");
                    } else {
                        //Decrementa dia
                        date.decrement(date.getDay(), date.getMonth(), date.getYear());
                        System.out.println(date.toString());
                    }
                    break;
                default:
                    break;
            }
        } while (opcao != 0);
    sc.close();
    }
}
