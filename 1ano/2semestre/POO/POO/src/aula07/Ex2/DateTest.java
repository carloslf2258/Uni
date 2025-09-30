package aula07.Ex2;

import java.util.Scanner;

public class DateTest {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        mainLoop: while (true) {
            System.out.print("Opções de classes para testar:\n1-DateYMD\n2-DateND\n0-Quit\n");
            int classoption = sc.nextInt();

            switch (classoption) {
                case 0 -> {
                    sc.close();
                    break mainLoop;
                }
                case 1 -> {
                    DateYMD date = null;
                    class1Loop: while (true) {
                        System.out.println("Date operations:");
                        System.out.println("1 - Create date");
                        System.out.println("2 - Show current date");
                        System.out.println("3 - Show current date (absolute day format)");
                        System.out.println("4 - Increment date");
                        System.out.println("5 - Decrement date");
                        System.out.println("0 - Exit");
                        System.out.print("Option: ");
                        int option = sc.nextInt();
                        if (option == 0)
                            break class1Loop;
                        class1Switch: switch (option) {
                            case 1 -> {
                                System.out.print("Day: ");
                                int day = sc.nextInt();
                                System.out.print("Month: ");
                                int month = sc.nextInt();
                                System.out.print("Year: ");
                                int year = sc.nextInt();
                                date = new DateYMD(day, month, year);
                                System.out.println("Date created: " + date);
                            }
                            case 2 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class1Switch;
                                }
                                System.out.println("Current date: " + date);
                            }
                            case 3 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class1Switch;
                                }
                                System.out.println("Current date: " + new DateND(date.getAbsDay()));
                            }
                            case 4 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class1Switch;
                                }
                                System.out.print("Number of days to increment date by: ");
                                int daysToIncrement = sc.nextInt();
                                date.addDays(daysToIncrement);
                                System.out.println("Date incremented: " + date);
                            }
                            case 5 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class1Switch;
                                }
                                System.out.print("Number of days to decremente date by: ");
                                int daysToDecrement = sc.nextInt();
                                date.removeDays(daysToDecrement);
                                System.out.println("Date decremented: " + date);
                            }
                            default -> System.out.println("Invalid option");
                        }
                    }
                }
                case 2 -> {
                    DateND date = null;
                    class2Loop: while (true) {
                        System.out.println("Date operations:");
                        System.out.println("1 - Create date");
                        System.out.println("2 - Show current date");
                        System.out.println("3 - Show current date (YMD days format)");
                        System.out.println("4 - Increment date");
                        System.out.println("5 - Decrement date");
                        System.out.println("0 - Exit");
                        System.out.print("Option: ");
                        int option = sc.nextInt();
                        if (option == 0)
                            break class2Loop;
                        class2Switch: switch (option) {
                            case 1 -> {
                                System.out.print("Day: ");
                                int day = sc.nextInt();
                                date = new DateND(day);
                                System.out.println("Date created: " + date);
                            }
                            case 2 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class2Switch;
                                }
                                System.out.println("Current date: " + date);
                            }
                            case 3 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class2Switch;
                                }
                                System.out.println("Current date: " + new DateYMD(date.getDay(), date.getMonth(), date.getYear()));
                            }
                            case 4 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class2Switch;
                                }
                                System.out.print("Number of days to increment date by: ");
                                int daysToIncrement = sc.nextInt();
                                date.addDays(daysToIncrement);
                                System.out.println("Date incremented: " + date);
                            }
                            case 5 -> {
                                if (date == null) {
                                    System.out.println("Date not created");
                                    break class2Switch;
                                }
                                System.out.print("Number of days to decremente date by: ");
                                int daysToDecrement = sc.nextInt();
                                date.removeDays(daysToDecrement);
                                System.out.println("Date decremented: " + date);
                            }
                            default -> System.out.println("Invalid option");
                        }
                    }
                }
                default -> System.out.println("Invalid option.");
            }
        }
    }
}