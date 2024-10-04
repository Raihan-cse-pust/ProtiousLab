#line 1 "C:/Users/Raihan/Desktop/ProteusLab/led_blinking.c"
void main() {
 TRISB=0x00;
 portb=0x00;

 while(1){
 portb.f0=0xff;
 delay_ms(100);
 portb.f0=0x00;
 delay_ms(100);

 }
}
