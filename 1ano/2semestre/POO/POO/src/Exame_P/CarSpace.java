package Exame_P;

import Exame_P.enums.SpaceType;

//CAMPING MAXDAYS = 3MESES
public class CarSpace extends CampingSpace{
    private int maxDays;

    

    public CarSpace(String location, int[] dimension, int costPerDay, int maxDays) {
        super(location, dimension, costPerDay);
        this.maxDays = maxDays;
    }
    

    public CarSpace(SpaceType space, int[] dimension, int costPerDay, int maxDays) {
        super(space, dimension, costPerDay);
        this.maxDays = maxDays;
    }


    public CarSpace(String location, int[] dimension, int costPerDay) {
        super(location, dimension, costPerDay);
    }


    public int getMaxDays() {
        return maxDays;
    }

    public void setMaxDays(int maxDays) {
        if (maxDays > 0 && maxDays <= 3*30)
        this.maxDays = maxDays;
    }

    @Override
    public String toString() {
        return "CarSpace [maxDays=" + maxDays + "]";
    }
    
    
    
}