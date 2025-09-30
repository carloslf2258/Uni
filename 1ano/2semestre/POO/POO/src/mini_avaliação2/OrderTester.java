package mini_avaliação2;

import java.util.Scanner;

public class OrderTester {

    public static void main(String[] args) {
        OrderManager OrderManager = new OrderManager();
        Scanner scanner = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\nOrder Fleet Menu:");
            System.out.println("1. Add a Order");
            System.out.println("2. Remove a Order (by id)");
            System.out.println("3. Search for a Order (by id)");
            System.out.println("4. Calculate Order Cost of an order (by id)");
            System.out.println("5. Print all Orders");
            System.out.println("0. Exit");

            System.out.print("Enter your choice: ");
            choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    addOrder(OrderManager, scanner);
                    break;
                case 2:
                    removeOrder(OrderManager, scanner);
                    break;
                case 3:
                    searchOrder(OrderManager, scanner);
                    break;
                case 4:
                    printAllOrders(OrderManager);
                    break;
                case 5:
                    calculateOrderCost(OrderManager, scanner);
                    break;
                case 0:
                    System.out.println("Exiting program...");
                    break;
                default:
                    System.out.println("Invalid choice. Please try again.");
                    break;
                }
            } while (choice != 0);
    
            scanner.close();
        }
        private static void addOrder(OrderManager OrderManager, Scanner scanner) {
        }
    
        private static void removeOrder(OrderManager OrderManager, Scanner scanner) {
        }
    
        private static void searchOrder(OrderManager OrderManager, Scanner scanner) {
        }
        private static void calculateOrderCost(OrderManager OrderManager, Scanner scanner) {
        }
    
        private static void printAllOrders(OrderManager OrderManager) {
        }
    
}
