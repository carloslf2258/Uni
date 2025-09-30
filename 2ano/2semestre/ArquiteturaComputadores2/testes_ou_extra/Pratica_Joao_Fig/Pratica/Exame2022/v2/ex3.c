#include<detpic32>

delay(int ms){
    ResetCoreTimer();
    while(ReadCoreTimer() < ms); // 20MHz -> 20M/1000 = 20K)
}

int main(void){
    TRISE &= 0xFF03;
    TRISBbits.TRISB2 = 1;
    TRISBbits.TRISB0 = 1;


    int counter = 0;
    float frequencia=0;

    while(1){
        LATE =(LATE & 0xFF30) | (2 << 2);
        
        if (PORTBbits.portb2 ==0 && PORTBbits.portb0 ==0){
            frequencia = 20000000.0 / 3.5;

        }
        else if (PORTBbits.portb2 ==1 && PORTBbits.portb0 ==1){
            frequencia = 20000000.0 / 10.5;
        }

        delay(frequencia);


    }

}