import java.util.Scanner;

public class MonthDays
{
   public static void main(String[] args) {
      Scanner sc = new Scanner(System.in);
      int mes = sc.nextInt();
      int dias = 0;
      switch (mes) {
         case 1: 
         case 3: 
         case 5: 
         case 7: 
         case 8:
         case 10:
         case 12:
            dias = 31;
            break;
         case 4:
         case 6:
         case 9:
         case 11:
            dias = 30;
            break;
         case 2:
            dias = 28;
            break;
         default:
            System.out.println("O número de mes não é válido.");
      }
      System.out.println("Mês " + mes + " tem " + dias + " dias");
      sc.close();
  }
}
