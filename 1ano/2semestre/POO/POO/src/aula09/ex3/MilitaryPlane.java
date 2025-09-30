package aula09.ex3;
public class MilitaryPlane extends Plane {
    private int numMissiles;

    public MilitaryPlane(String id, String manufacturer, String model, int year, int maxPassengers, double maxSpeed, int numMissiles) {
        super(id, manufacturer, model, year, maxPassengers, maxSpeed);
        if (numMissiles < 0)
            throw new IllegalArgumentException("Number os crew members must be positive");
        this.numMissiles = numMissiles;
    }
    public int getNumMissiles() {
        return numMissiles;
    }
    public void setYear(int numMissiles) {
        if (numMissiles > 0)
            this.numMissiles = numMissiles;
    }

    @Override
    public String toString() {
        return "CommercialPlane{" +
                "id='" + getId() + '\'' +
                ", manufacturer='" + getManufacturer() + '\'' +
                ", model='" + getModel() + '\'' +
                ", year=" + getYear() +
                ", maxPassengers=" + getMaxPassengers() +
                ", maxSpeed=" + getMaxSpeed() +
                ", numMissiles=" + numMissiles +
                '}';
}
}