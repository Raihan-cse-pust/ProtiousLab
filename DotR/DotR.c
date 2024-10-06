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
   PORTB = 0x01;
   Delay_ms(5);

   PORTD = 0x20;
   PORTB = 0x62;
   Delay_ms(5);

   PORTD = 0x10;
   PORTB = 0x94;
   Delay_ms(5);

   PORTD = 0x08;
   PORTB = 0x98;
   Delay_ms(5);

   PORTD = 0x04;
   PORTB = 0x90;
   Delay_ms(5);

   PORTD = 0x02;
   PORTB = 0xff;
   Delay_ms(5);

   PORTD = 0x01;
   PORTB = 0x00;
   Delay_ms(5);
 }
}