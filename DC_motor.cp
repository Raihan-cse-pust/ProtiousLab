#line 1 "C:/Users/Raihan/Desktop/ProteusLab/DC_motor.c"
void main(){
 TRISB=0x00;
 TRISC=0xff;
 portb=0x00;
 while(1){
 if(portc.f1==0xff){
 delay_ms(100);
 if(portc.f1==0xff){
 portb.f0=0xff;
 portb.f1=0x00;
 }

 }
 else
 {
 portb.f0=0x00;
 portb.f1=0xff;

 }

 }


}
