package Exame_P;


import java.util.Date;

public class Booking {
    private String campsite;
    private Date startDate;
    private Date endDate;

    public Booking(String campsite, Date startDate, Date endDate) {
        this.campsite = campsite;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    // Getters and Setters
    public String getCampsite() {
        return campsite;
    }

    public void setCampsite(String campsite) {
        this.campsite = campsite;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
}
