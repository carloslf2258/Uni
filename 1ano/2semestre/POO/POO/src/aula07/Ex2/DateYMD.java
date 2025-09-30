package aula07.Ex2;

import java.util.Calendar;
import java.util.Objects;

public class DateYMD extends Date implements Comparable<DateYMD> {

//Mês válido
    public static boolean validMonth(int m){
        return (m > 0 && m <= 12);
    }
    
//Dias do mês
    public static int MonthDays(int month, int year){
        //Dias do mês sem considerar ano bissexto
        int[] diasMes = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        //Verificar se o ano é bissexto
        if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
            diasMes[1] = 29;
        }
        return diasMes[month - 1];
    }

    //Ano bissexto tendo em conta o numero de dias em fevereiro
    public static boolean leapYear(int year){
        if (MonthDays(2, year) == 29){
            return true;
        } else {
            return false;
        }
    }
//Validar data tendo em conta as funções anteriores
    public static boolean valid(int day, int month, int year) {
        if (day < 0 || day > MonthDays(month, year)){
            return false;
        }
        if (!validMonth(month)){
            return false;
        }
        if (year < 0){
            return false;
        }
        
        return true;
    }


    //valores para o construtor
    private int day;
    private int month;
    private int year;
    
    //CONSTRUTOR DA CLASSE
    public DateYMD(int day, int month, int year){
        if (valid(day, month, year)){
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            System.out.println("Data inválida");
        }
    }

    //Contrutor com data atual
    public DateYMD(){
        Calendar c = Calendar.getInstance();
            this.day = c.get(Calendar.DAY_OF_MONTH);
            this.month = c.get(Calendar.MONTH)+1;
            this.year = c.get(Calendar.YEAR);
    }

    //set
    public void set(int day, int month, int year){
        if (valid(day, month, year)){
            this.day = day;
            this.month = month;
            this.year = year;
        } else {
            System.out.println("Data inválida");
        }
    }

    
    //Devolver valores (dia ou mes ou ano)
    public int getDay(){
        return day;
    }
    public int getMonth(){
        return month;
    }
    public int getYear(){
        return year;
    }

// Mais um dia à data
    @Override
    public void increment(){
        if (this.day < MonthDays(month, year)){
            this.day += 1;
        } else{
            this.day = 1;
            if (month == 12){
                month = 1;
                year += 1;
            } else{
                month += 1;
            }
        }
    }

    //Increment varias vezes
    @Override
    public void addDays(int days) {
        for (int i = 0; i < days; i++)
            this.increment();
    }

    //Menos um dia à data
    @Override
    public void decrement(){
        if (this.day == 1 && this.month == 1){
            this.day = 31;
            this.month = 12;
            this.year -= 1;
        } else{
            if (this.day == 1){
                this.day = MonthDays(month - 1, year);
            } else{
                this.day -= 1;
            }
        }
    }
    //Decrement varias vezes
    @Override
    public void removeDays(int days) {
        for (int i = 0; i < days; i++)
            this.decrement();
    }

    //Função pedida contar a partir do ano 2000
    public int getAbsDay() {
        int absDay = 0;
        for (int i = 2000; i < this.year; i++) {
            if (leapYear(i))
                absDay += 366;
            else
                absDay += 365;
        }
        for (int i = 1; i < this.month; i++) {
            absDay += MonthDays(i, this.year);
        }
        return absDay + this.day;
    }

    @Override
    public String toString(){
        return String.format("%04d-%02d-%02d", year, month, day);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DateYMD dateYMD = (DateYMD) o;
        return day == dateYMD.day && month == dateYMD.month && year == dateYMD.year;
    }

    @Override
    public int hashCode() {
        return Objects.hash(day, month, year);
    }

    public int compareTo(DateYMD o) {
        if (this.year != o.year) {
            return this.year - o.year;
        } else if (this.month != o.month) {
            return this.month - o.month;
        } else {
            return this.day - o.day;
        }
    }
    

    
    }