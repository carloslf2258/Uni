package aula09.ex3;
public class Plane {

    private String id;
    private String manufacturer;
    private String model;
    private int year;
    private int maxPassengers;
    private double maxSpeed;

    //CONSTRUTOR
    public Plane(String id, String manufacturer, String model, int year, int maxPassengers, double maxSpeed){
        this.id = id;
        this.manufacturer = manufacturer;
        this.model = model;
        this.year = year;
        this.maxPassengers = maxPassengers;
        this.maxSpeed = maxSpeed;
    }

    public String getId() {
        return id;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public String getModel() {
        return model;
    }

    public int getYear() {
        return year;
    }
    public int getMaxPassengers() {
        return maxPassengers;
    }
    public double getMaxSpeed() {
        return maxSpeed;
    }

    public void setYear(int year) {
        if (year > 0)
            this.year = year;
    }
    public void setMaxPassengers(int maxPassengers) {
        if (maxPassengers > 0)
            this.maxPassengers = maxPassengers;
    }
    public void setMaxSpeed(int maxSpeed) {
        if (maxSpeed > 0)
            this.maxSpeed = maxSpeed;
    }
    @Override
    public String toString() {
        return "Plane{" +
                "id='" + id + '\'' +
                ", manufacturer='" + manufacturer + '\'' +
                ", model='" + model + '\'' +
                ", year=" + year +
                ", maxPassengers=" + maxPassengers +
                ", maxSpeed=" + maxSpeed +
                '}';
    }
    
}
