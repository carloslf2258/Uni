package aula05;

import java.util.Calendar;
import java.util.Scanner;

public class DateYMD {

    static Scanner sc = new Scanner(System.in);
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
    public void increment(int day, int month, int year){
        if (day < MonthDays(month, year)){
            day += 1;
        } else{
            if (month == 12){
                day = 1;
                month = 1;
                year += 1;
            } else{
                day = 1;
                month += 1;
            }
        }
        // Actualiza os atributos da instancia
        this.day = day;
        this.month = month;
        this.year = year;
    }

    //Increment varias vezes
    public void addDays(int days) {
        for (int i = 0; i < days; i++)
            this.increment(this.day, this.month, this.year);
    }

    //Menos um dia à data
    public void decrement(int day, int month, int year){
        if (day == 1 && month == 1){
            day = 31;
            month = 12;
            year -= 1;
        } else{
            if (day == 1){
                day = MonthDays(month - 1, year);
            } else{
                day -= 1;
            }
        }
        // Actualiza os atributos da instancia
        this.day = day;
        this.month = month;
        this.year = year;
    }

    @Override
    public String toString(){
        return String.format("%04d-%02d-%02d", year, month, day);
    }

    
    }




