#line 1 "C:/Users/Raihan/Desktop/ProteusLab/sevensegmentfurdigit.c"
char array[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
 int i,j,digit1,digit2,digit3,digit4;
 TRISB=0x00;
 TRISC=0x00;
 portb=0x00;
 portc=0x00;
 while(1){
 for(i=0;i<=9999;i++){
 digit1=i/1000;
 digit2=(i/100)%10;
 digit3=(i/10)%10;
 digit4=(i%10);
 for(j=0;j<50;j++){
 portc.f0=0xff;
 portb=array[digit1];
 delay_ms(5);

 portc.f0=0x00;
 portc.f1=0xff;
 portb=array[digit2];
 delay_ms(5);

 portc.f1=0x00;
 portc.f2=0xff;
 portb=array[digit3];
 delay_ms(5);

 portc.f2=0x00;
 portc.f3=0xff;
 portb=array[digit4];
 delay_ms(5);
 portc.f3=0x00;
 }
 }
 }

}
