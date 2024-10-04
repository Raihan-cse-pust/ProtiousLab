void main() {
      TRISB=0x00;
      TRISD=0xff;
      portb=0x00;
      while(1){
               if(portd.f0==0xff){
                                  delay_ms(200);
                                  if(portd.f0==0xff){
                                                     portb.f0=0x00;
                                                     portb.f1=0xff;

                                                     }
               }
               else{
                    portb.f0=0xff;
                    portb.f1=0x00;
               }

      
      }
}