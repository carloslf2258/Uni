package aula04;

import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        //TODO: acumular distância percorrida
        this.kms += distance;
    }
    public String toString() {
        return make + " " + model + ", " + year + ", kms: " + kms;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);

    //COMEÇAR

    static boolean verifyCarData(String[] data) {
        // verifica se os dados do carro estão no formato correto
        // marca é composta por uma única palavra, modelo é composto por uma ou mais palavras, 
        // ano é um número inteiro positivo composto por 4 algarismos, quilometragem é um número inteiro positivo
        String make = data[0];
        String model = data[1];
        int year, kms;
    
        if (data.length != 4) return false; // deve ter 4 elementos
    
        try {
            year = Integer.parseInt(data[2]);
            kms = Integer.parseInt(data[3]);
        } catch (NumberFormatException e) {
            return false; // ano e kms devem ser inteiros
        }
    
        if (year < 0 || data[2].length() != 4) return false; // ano deve ser positivo e ter 4 dígitos
    
        if (kms < 0) return false; // kms deve ser positivo
    
        return make.matches("\\w+") && model.matches("\\w+( \\w+)*"); // verifica se make é uma palavra e model é uma ou mais palavras
    }



    static int registerCars(Car[] cars) {
        // pede dados dos carros ao utilizador e acrescenta ao vetor
        // registo de carros termina quando o utilizador inserir uma linha vazia 
        // devolve número de carros registados
        int i = 0;
        String input;
    
        do {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            input = sc.nextLine().trim();
    
            if (!input.isEmpty()) {
                String[] carData = input.split(" ");
                if (verifyCarData(carData)) {
                    cars[i] = new Car(carData[0], carData[1], Integer.parseInt(carData[2]), Integer.parseInt(carData[3]));
                    i++;
                } else {
                    System.out.println("Dados mal formatados. Tente novamente.");
                }
            }
        } while (!input.isEmpty() && i < 10);
    
        return i;
    }

    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia 
        System.out.print("Registe uma viagem no formato \"carro:distância\": ");
    }


    static void listCars(Car[] cars) {

        // Lista todos os carros registados
        // Exemplo de resultado
        // Carros registados: 
        // Toyota Camry, 2010, kms: 234346
        // Renault Megane Sport Tourer, 2015, kms: 32536

        System.out.println("\nCarros registados: ");
        for (Car car : cars) {
            System.out.println(car.make + " " + car.model + ", " + car.year + ", kms: " + car.kms);
        }
        System.out.println();
    }

    public static void main(String[] args) {

        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars>0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

        sc.close();

    }
}