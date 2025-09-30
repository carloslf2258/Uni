package Exame_P;

import Exame_P.enums.SpaceType;

//CAMPING MAXDAYS = 15DIAS
public class TentSpace extends CampingSpace{
    private int maxDays;


    public TentSpace(String location, int[] dimension, int costPerDay, int maxDays) {
        super(location, dimension, costPerDay);
        this.maxDays = maxDays;
    }
    

    public TentSpace(SpaceType space, int[] dimension, int costPerDay, int maxDays) {
        super(space, dimension, costPerDay);
        this.maxDays = maxDays;
    }


    public TentSpace(String location, int[] dimension, int costPerDay) {
        super(location, dimension, costPerDay);
    }


    public int getMaxDays() {
        return maxDays;
    }

    public void setMaxDays(int maxDays) {
        if (maxDays > 0 && maxDays <= 15)
        this.maxDays = maxDays;
    }

    @Override
    public String toString() {
        return "TentSpace [maxDays=" + maxDays + "]";
    }
    
    
    
}