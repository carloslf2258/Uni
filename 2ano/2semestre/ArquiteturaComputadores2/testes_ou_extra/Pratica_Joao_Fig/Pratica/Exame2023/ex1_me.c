#include <detpic32.h>

int main(void){
    //RE5 - RE2 out
    TRISE = TRISE & 0xFFC3;
    //RB2 in
    TRISB = TRISB | 0x0004;
    
    // 1/2.3 = 435ms (+/-)
    // 1/5.2 = 192ms (+/-)

    int cont = 0;
    while(1){
        if(PORTB & 0x0004){
            cont <= 9 ? cont = 0 : cont++;
            //delay(435)
            resetCoreTimer();
            while(readCoreTimer() < (20000*(1/2.3))*1000);        
        } else {
            cont >= 0 ? cont = 9 : cont--;
            resetCoreTimer();
            while(readCoreTimer() < 20000*(1/5.2)*1000);
        }



    }


    
    return 0;
}

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer() < 20000*ms);
}