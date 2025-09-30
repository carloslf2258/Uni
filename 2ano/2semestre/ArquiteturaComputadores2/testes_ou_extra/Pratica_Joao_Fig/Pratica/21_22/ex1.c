#include<detpic32.h>

void delay(int ms);
void delay(int ms){
    ResetCoreTimer();
    while(ReadCoreTimer()<ms);
}


int main(void){
    TRISE = TRISE & 0xFF10;
    TRISBbits.TRISB2 = 1;


    int valor = 0x0b000001;
    float frequencia = 0

    while(1){

        if (PORTBbits.PORTB2 ==0){
            frequencia = frequencia + 20000000/3;
        }
        else if (PORTBbits.PORTB2 ==1){
            frequencia = frequencia + 20000000/7;
        }



        LATE = (LATE & 0xFF10);
        valor = valor <<1;
        if (valor == 0x0b100000){
            valor = 0x0b000001;
        }

        delay(frequencia);

        
    }
    return 0;
}