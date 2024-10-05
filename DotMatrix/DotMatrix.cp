#line 1 "C:/Users/Raihan/Desktop/ProteusLab/DotMatrix/DotMatrix.c"
void main()
{
 TRISB = 0x00;
 TRISD = 0x00;
 while(1)
 {
 PORTD = 0x80;
 PORTB = 0x00;
 Delay_ms(5);

 PORTD = 0x40;
 PORTB = 0xff;
 Delay_ms(5);

 PORTD = 0x20;
 PORTB = 0xff;
 Delay_ms(5);

 PORTD = 0x10;
 PORTB = 0x18;
 Delay_ms(5);

 PORTD = 0x08;
 PORTB = 0x18;
 Delay_ms(5);

 PORTD = 0x04;
 PORTB = 0xff;
 Delay_ms(5);

 PORTD = 0x02;
 PORTB = 0xff;
 Delay_ms(5);

 PORTD = 0x01;
 PORTB = 0x00;
 Delay_ms(5);
 }
}
