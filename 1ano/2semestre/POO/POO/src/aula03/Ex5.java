package aula03;
import java.util.Scanner;
public class Ex5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int mes, ano, dia;
        String data;
        


//do-while para obter o mes e o ano do formato "mes/ano" validados
        do {
            System.out.print("Insira a data no formato (mes/ano): ");
            data = sc.next();
            String[] partes = data.split("/");
            mes = Integer.parseInt(partes[0]);
            ano = Integer.parseInt(partes[1]);
        } while ((mes < 1 || mes > 12) && ano > 0);

        //dia do mês
        do {
            System.out.print("Insira o nº do dia da semana que começa o mês, sendo 2feira=1 e domingo=7: ");
            dia = sc.nextInt();
        } while(dia < 0 || dia > 7);



        //Mini base de dados meses do ano
        String[] meses = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

        //nº de dias do mes
        int n_dias_mes = UserInput.dias_do_mes(mes, ano);

        //Inicio print do calendario
        System.out.printf("%13s %2d\n", meses[mes-1], ano);
        System.out.println("Su Mo Tu We Th Fr Sa");

        // Imprimir os dias do mês
        for (int i = 1; i < dia; i++) {
            System.out.print("   ");
        }
        for (int i = 1; i <= n_dias_mes; i++) {
            System.out.printf("%2d ", i);
            if ((i + dia - 1) % 7 == 0) {
                System.out.println();
            }
        }

    sc.close();
    }
    
}
