package aula12.Ex3;

import java.util.Scanner;

public class UserInput {
    public static String input(Scanner sin, String message) {
        while (sin.hasNextLine()) {
        System.out.print(message);
    
        }
        return sin.nextLine();
    }
    
}
