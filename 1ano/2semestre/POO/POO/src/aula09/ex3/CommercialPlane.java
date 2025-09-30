package aula09.ex3;
public class CommercialPlane extends Plane {
    private int numOfCrewMembers;

    //CONSTRUTOR
    public CommercialPlane(String id, String manufacturer, String model, int year, int maxNumOfPassengers, double maxSpeed, int numOfCrewMembers) {
        super(id, manufacturer, model, year, maxNumOfPassengers, maxSpeed);
        if (numOfCrewMembers < 0)
            throw new IllegalArgumentException("Number os crew members must be positive");
        this.numOfCrewMembers = numOfCrewMembers;
    }
    public int getNumOfCrewMembers() {
        return numOfCrewMembers;
    }
    public void setYear(int numOfCrewMembers) {
        if (numOfCrewMembers > 0)
            this.numOfCrewMembers = numOfCrewMembers;
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
            ", numOfCrewMembers=" + numOfCrewMembers +
            '}';
}

}
