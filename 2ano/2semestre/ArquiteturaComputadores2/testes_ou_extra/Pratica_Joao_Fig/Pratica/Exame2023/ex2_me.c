#include <detpic32.h>

void send2display(unsigned char value){
    disp7segments = { ... };

    LATDbits.LATD6 = 0; // disable high
    LATDbits.LATD5 = 1; // enable low
    LATB = (LATB & 0x80FF) | disp7segments[value & 0x0F] << 8;
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

    //For digits high and low RD5-6
    TRISD = TRISD & 0xFF9F;
    //Para display 7 segmentos
    TRISB = TRISB & 0x80FF;
    
    while(1){
        int i, media = 0;
        volatile int voltage;
        AD1CON1bits.ASAM = 1;
        //LATEbits.LATE4 = !LATEbits.LATE4;
        while(IFS1bits.AD1IF == 0);
        IFS1bits.AD1IF = 0;
        
        int *p = (int*)(&ADC1BUF0);
        for(i=0; i < 2; i++){
            media += p[i*4];
        }
        media /= 4;

        resetCoreTimer();
        while(readCoreTimer()<4000000);      // 1/5 = 0.2s = 200ms -> 200*20K =  4000000

        printInt(media,16 | 3<<16);
        
        media = media % 9;
        send2display(media);
        

        /* putChar('\r');
        printInt(media,2 | 10<<16);
        media = media / 128;
        putChar('\t');
        printInt(media,10 | 1<<16);
        int display = PORTBbits.RB1;
        if(display){
            LATDbits.LATD5 = 1;
            LATDbits.LATD6 = 0;
        }else{
            LATDbits.LATD5 = 0;
            LATDbits.LATD6 = 1;
        } */
        
    }
    return 0;
}
