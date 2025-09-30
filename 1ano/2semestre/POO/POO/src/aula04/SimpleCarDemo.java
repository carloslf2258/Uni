package aula04;
/*import java.util.Scanner;

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
        //Acumula distância percorrida
        kms += distance;
    }*/

    /*public String getMake(){
        return make;
    }
    public String getModel(){
        return model;
    }
    public int getYear(){
        return year;
    }
    public int getKms(){
        return kms;
    }

}*/

/*public class SimpleCarDemo {

    static Scanner sc = new Scanner(System.in);
    
    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        for (Car car : cars) {
            System.out.println(car.make + " " + car.model + ", " + car.year + ", kms: " + car.kms);
        }
        System.out.println();
    }*/


    /* TENTATIVA DE listCars
        for (int i = 0; i < cars.length && cars[i] != null; i++) {
            Car car = cars[i];
            System.out.println(car.toString());
        }*/

        /* Outra tentativa falhada
        for (int i = 0; i < cars.length && cars[i] != null; i++) {
            Car car = cars[i];
            System.out.printf("%s, %d, kms: %d\n", car.make + " " + car.model, car.year, car.kms);
        }*/


    /*public static void main(String[] args) {

        Car[] cars = new Car[3]; 
        cars[0] = new Car("Renault", "Megane Sport Tourer", 2015, 35356); 
        cars[1] = new Car("Toyota", "Comry", 2010, 32456); 
        cars[2] = new Car("Mercedes", "Vito", 2008, 273891); 

        listCars(cars);

        // Adicionar 10 viagens geradas aleatoriamente
        for (int i=0; i<10; i++) {
            int j = (int)Math.round(Math.random()*2); // escolhe um dos 3 carros
            int kms = (int)Math.round(Math.random()*1000); // viagem até 1000 kms
            System.out.printf("Carro %d viajou %d quilómetros.\n", j, kms);
            
            // Viagem ao carro j
            cars[j].drive(kms);
        }
        System.out.println(cars.toString());
        listCars(cars);

        sc.close();

    }



    
}*/
