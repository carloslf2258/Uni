package aula07.Ex2;

    public abstract class Date {
        public abstract int getAbsDay();
        public abstract int getDay();
        public abstract int getMonth();
        public abstract int getYear();
        public abstract void increment();
        public abstract void decrement();
        public abstract void addDays(int days);
        public abstract void removeDays(int days);

        public static int MonthDays(int month, int year) {
            if (!validMonth(month))
                return -1;
                int[] diasMes = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
            if (month == 2 && leapYear(year))
                return 29;
            return diasMes[month - 1];
        }
    
        public static boolean validMonth(int month) {
            return month >= 1 && month <= 12;
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
    
        public static boolean leapYear(int year) {
            return year % 100 == 0 ? year % 400 == 0 : year % 4 == 0;
        }

}
