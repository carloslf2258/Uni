package Exame_P;

import Exame_P.enums.SpaceType;

//CAMPING MAXDAYS = 3ANOS
public class CaravanSpace extends CampingSpace{
    private int maxDays;
    
    public CaravanSpace(String location, int[] dimension, int costPerDay, int maxDays) {
        super(location, dimension, costPerDay);
        this.maxDays = maxDays;
    }

    

    public CaravanSpace(SpaceType space, int[] dimension, int costPerDay, int maxDays, SpaceType space2) {
        super(space, dimension, costPerDay);
        this.maxDays = maxDays;
        space = space2;
    }



    public CaravanSpace(String location, int[] dimension, int costPerDay) {
        super(location, dimension, costPerDay);
    }



    public int getMaxDays() {
        return maxDays;
    }

    public void setMaxDays(int maxDays) {
        if (maxDays > 0 && maxDays <= 3*365)
        this.maxDays = maxDays;
    }

    @Override
    public String toString() {
        return "CaravanSpace [maxDays=" + maxDays + "]";
    }
    
    
    
}
