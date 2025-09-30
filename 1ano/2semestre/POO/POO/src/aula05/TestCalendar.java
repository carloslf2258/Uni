package aula05;
import java.util.Scanner;
public class TestCalendar {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Calendar calendar = null;
        while (true) {
            System.out.print("Calendar operations:\n1 - create new calendar\n2 - print calendar month\n3 - print calendar\n4 - add event\n5 - remove event\n0 - exit\n> ");
            int op = sc.nextInt();
            switch (op) {
                case 1 -> {
                    System.out.print("Year: ");
                    int year = sc.nextInt();
                    System.out.print("First day of week: ");
                    int firstDayOfWeek = sc.nextInt();
                    calendar = new Calendar(year, firstDayOfWeek);
                }
                case 2 -> {
                    if (calendar == null) {
                        System.out.println("Create a calendar first");
                        break;
                    }
                    System.out.print("Month: ");
                    int month = sc.nextInt();
                    calendar.printMonth(month);
                }
                case 3 -> {
                    if (calendar == null) {
                        System.out.println("Create a calendar first");
                        break;
                    }
                    for (int month = 1; month <= 12; month++)
                        calendar.printMonth(month);
                }
                case 4 -> {
                    if (calendar == null) {
                        System.out.println("Create a calendar first");
                        break;
                    }
                    System.out.print("Day: ");
                    int day = sc.nextInt();
                    System.out.print("Month: ");
                    int month = sc.nextInt();
                    System.out.print("Year: ");
                    int year = sc.nextInt();
                    calendar.addEvent(day, month, year);
                }
                case 5 -> {
                    if (calendar == null) {
                        System.out.println("Create a calendar first");
                        break;
                    }
                    System.out.print("Day: ");
                    int day = sc.nextInt();
                    System.out.print("Month: ");
                    int month = sc.nextInt();
                    System.out.print("Year: ");
                    int year = sc.nextInt();
                    calendar.removeEvent(day, month, year);
                }
                case 0 -> {
                    sc.close();
                    System.exit(0);
                }
                default -> System.out.println("Invalid option");
            }
        }
    }
    
}
