#include<detpic32.h>

void delay(int ms);
void delay(intms){
    ReadCoreTimer();
    while(ReadCoreTimer()<ms)
}

int main(void){
    TRISBbits.TRISB4 = 1; // RBx digital output disconnected
 AD1PCFGbits.PCFG4= 0; // RBx configured as analog input
 AD1CON1bits.SSRC = 7; // Conversion trigger selection bits: in this
 // mode an internal counter ends sampling and
 // starts conversion
 AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
 // interrupt is generated. At the same time,
 // hardware clears the ASAM bit
 AD1CON3bits.SAMC = 16; // Sample time is 16 TAD (TAD = 100 ns)
 AD1CON2bits.SMPI = 2-1; // Interrupt is generated after N samples
 // (replace N by the desired number of
 // consecutive samples)
 AD1CHSbits.CH0SA = 4; // replace x by the desired input
 // analog channel (0 to 15)
 AD1CON1bits.ON = 1; // Enable A/D converter
 // This must the last command of the A/D
 // configuration sequence


    unsigned const char display7segment[] = {
            0x3F, // 0
            0X06, // 1
            0x5B, //2
            0x4F, //3
            0x66, //4
            0x6D, //5
            0x7D, //6
            0x07, //7
            0x7F, //8
            0x6F, //9
            0x77, //A
            0x7C, //b
            0x39, //C
            0x5E, //d
            0x79, //E
            0x71  //F
        };
        TRISB = TRISB & 0x7F00;
        TRISEbits.TRISE1 = 0;
        int media = 0;
        valor = 0

        AD1CON1bits.ASAM = 1;
        while( IFS1bits.AD1IF == 0 ){
                media =  ADC1BUF0 + ADC1BUF1 / 2;
    
                printf(media,16 | 3 >> 16);
                valor = media* 100 / 1023;
                LATE = (LATE & 0x7F00) | display7segment[valor>>8];

                IFS1bits.AD1IF = 0

        }
        return 0;
    }

