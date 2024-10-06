#line 1 "C:/Users/Raihan/Desktop/ProteusLab/relay/relay.c"
void main(void) {

 TRISB = 0x00;
 PORTB.RB0 = 0x00;


 while(1) {

 PORTB.RB0 = 0xff;
 delay_ms(1000);


 PORTB.RB0 = 0x00;
 delay_ms(1000);
 }
}
