package aula05;

import java.util.Arrays;

public class Calendar {
    //Valores para o construtor
    private final int year;
    private final int firstWeekdayOfYear;
    private final int[][] events;

    //CONSTRUTOR DO CALENDARIO
    public Calendar(int year, int firstWeekdayOfYear) {
        if (!validfirstWeekdayOfYear(firstWeekdayOfYear)) {
            throw new IllegalArgumentException("Invalid number of first week-day of the year");
        }
        this.year = year;
        this.firstWeekdayOfYear = firstWeekdayOfYear;
        this.events = new int[366][3];
    }
        
    //Função para validar que o dia da semana em que começa o ano é correto
    public boolean validfirstWeekdayOfYear(int f){
        return (f>=1 || f<=7);
    }
//Métodos get para ano e firstWeekdayOfYear
    public int getYear() {
        return this.year;
    }
    public int firstWeekdayOfYear() {
        return this.firstWeekdayOfYear;
    }
    

    public int firstWeekdayOfMonth(int month){
        int day = this.firstWeekdayOfYear;
        for (int m = 1; m < month; m++) {
            if (day == 7)
                day = 0;
            int days = DateYMD.MonthDays(m, this.year);
            day += days % 7 - 1;
            if (day > 7)
                day -= 7;
            day++;
        }
        //(Nota)Ver como usar:
        //return day == 7 ? 7 : day%7;
        if (day == 7) {
            return 7;
        } else {
            return day % 7;
        }
    
    }

    public void printMonth(int month) {
        String[] meses = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
        System.out.printf("\n%15s %d\n", meses[month-1], year);
        System.out.println("Dom Seg Ter Qua Qui Sex Sab");

        int firstWeekday = this.firstWeekdayOfMonth(month);
        for (int i = 1; i < firstWeekday; i++)
            System.out.print("    ");
        
        for (int monthDay = 1; monthDay <= DateYMD.MonthDays(month, year); monthDay++) {
            System.out.print(this.isEvent(monthDay, month, this.year) ? String.format("*%2d ", monthDay) : String.format("%3d ", monthDay));
            if ((monthDay + firstWeekday - 1) % 7 == 0)
                System.out.println();
        }
        System.out.println();
    }

    public void addEvent(int day, int month, int year) {
        int[] eventToAdd = {day, month, year};
        for (int i = 0; i < this.events.length; i++) {
            if (Arrays.equals(this.events[i], new int[]{0, 0, 0})) {
                this.events[i] = eventToAdd;
                break;
            }
        }
    }

    public void removeEvent(int day, int month, int year) {
        int[] eventToRemove = {day, month, year};
        for (int i = 0; i < this.events.length; i++) {
            if (this.events[i] == eventToRemove) {
                this.events[i] = new int[]{0, 0, 0};
                break;
            }
        }
    }

    private boolean isEvent(int day, int month, int year) {
        int[] event = {day, month, year};
        for (int[] ints : this.events) {
            if (Arrays.equals(ints, event))
                return true;
        }
        return false;
    }

    

















}
