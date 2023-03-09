package aula04;

import java.util.Arrays;
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
        //Acumular distância percorrida
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
        
        if (data.length < 4){
            return false;
        }
        
        //Campos
        //Função de juntar palavras e dentro tem:
        //Array que faz uma cópia desde o elemento de indice 1 até o penúltimo(exclusive)
        String model = String.join(" ", Arrays.copyOfRange(data, 1, data.length - 2));
        int year, kms;
    
        try {
            year = Integer.parseInt(data[data.length - 2]);
            kms = Integer.parseInt(data[data.length - 1]);
        } catch (NumberFormatException e) {
            return false;
        }
        if (model.split(" ").length < 1) {
            return false;
        }
        
        // Verificar se o ano é um número inteiro positivo composto por 4 algarismos
        if (year < 1000 || year > 9999) {
            return false;
        }
        
        // Verificar se a quilometragem é um número inteiro positivo
        if (kms < 0) {
            return false;
        }
        
        // Se chegou até aqui, os dados são válidos
        return true;
        
    }



    static int registerCars(Car[] cars) {
        // pede dados dos carros ao utilizador e acrescenta ao vetor
        // registo de carros termina quando o utilizador inserir uma linha vazia 
        // devolve número de carros registados
        int i = 0;
        String informacao, model;
        int year, kms;
        
        do {
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            informacao = sc.nextLine().trim();
    
            if (!informacao.isEmpty()) {
                String[] carData = informacao.split(" ");

                //Estas variaveis vêm função acima "VerifyCarData", é como defini o modelo, ano e Kms
                model = String.join(" ", Arrays.copyOfRange(carData, 1, carData.length - 2));
                year = Integer.parseInt(carData[carData.length - 2]);
                kms = Integer.parseInt(carData[carData.length - 1]);
                //Usar funçao de verificar
                if (verifyCarData(carData)) {
                    //Variaveis definidas 4/5 linhas em cima
                    cars[i] = new Car(carData[0], model, year, kms);
                    i++;
                } else {
                    System.out.println("Dados mal formatados. Tente novamente.");
                }
            }
        } while (!informacao.isEmpty() && i < 10);
    
        return i;
    }

    static void registerTrips(Car[] cars, int numCars) {
        // TODO: pede dados das viagens ao utilizador e atualiza informação do carro
        // registo de viagens termina quando o utilizador inserir uma linha vazia
        String input;
        while (true) {
            System.out.print("Registe uma viagem no formato \"carro:distância\": ");
            input = sc.nextLine().trim();
            if (input.isEmpty()) break;
            String[] parts = input.split(":");
            if (parts.length != 2) {
                System.out.println("Dados mal formatados. Tente novamente.");
            } else {
                try {
                    int car = Integer.parseInt(parts[0]);
                    int distance = Integer.parseInt(parts[1]);
                    if (car < 0 || car >= numCars || distance <= 0) {
                        System.out.println("Dados mal formatados. Tente novamente.");
                    } else {
                        cars[car].drive(distance);
                    }
                } catch (NumberFormatException e) {
                    System.out.println("Dados mal formatados. Tente novamente.");
                }
            }
        }
    }


    static void listCars(Car[] cars) {

        // Lista todos os carros registados
        // Exemplo de resultado
        // Carros registados: 
        // Toyota Camry, 2010, kms: 234346
        // Renault Megane Sport Tourer, 2015, kms: 32536

        System.out.println("\nCarros registados: ");
        for (Car car : cars) {
            if (car != null) {
            System.out.println(car.make + " " + car.model + ", " + car.year + ", kms: " + car.kms);
            }
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