package Exame_P;

import Exame_P.enums.SpaceType;

public class CampingSpace {
    //Valores para construtor
    private String location;
    private int[] dimension = new int[2];
    private int costPerDay;
    private SpaceType space;
    
    //CONSTRUTORES 
    public CampingSpace(String location,int[] dimension, int costPerDay) {
        this.dimension = dimension;
        this.location = location;
        this.costPerDay = costPerDay;
    }
    public CampingSpace(SpaceType space,int[] dimension, int costPerDay) {
        this.dimension = dimension;
        this.space = space;
        this.costPerDay = costPerDay;
    }

    //GETTERS
    
    public String getLocation() {
        return location;
    }
    public int getLargura() {
        return dimension[0];
    }
    public int getComprimento() {
        return dimension[1];
    }
    public int[] getDimension() {
        return dimension;
    }
    public int getCostPerDay() {
        return costPerDay;
    }
    public void getType(){
        return;
    }
    public SpaceType getSpace() {
        return space;
    }
    
    //SETTERS
    public void setLocation(String location) {
        this.location = location;
    }
    public void setLargura(int largura) {
        this.dimension[0] = largura;
    }
    public void setComprimento(int comprimento) {
        this.dimension[1] = comprimento;
    }
    public void setDimension(int[] dimension) {
        this.dimension = dimension;
    }
    public void setCostPerDay(int costPerDay) {
        this.costPerDay = costPerDay;
    }

    public void setSpace(SpaceType space) {
        this.space = space;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        CampingSpace other = (CampingSpace) obj;
        if (location == null) {
            if (other.location != null)
                return false;
        } else if (!location.equals(other.location))
            return false;
        if (dimension != other.dimension)
            return false;
        return true;
    }
    

    

    
    
    
    
    
}
