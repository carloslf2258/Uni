package aula11.Ex1;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class example {
    public static void main(String[] args) {
        try{
        Scanner input = new Scanner(new File("src\\aula11\\Ex1\\major.txt"));
        while (input.hasNextLine()){
            System.out.println(input.nextLine());}
        }
        catch (IOException e){
            System.out.println("Erro");
    }
}
}
