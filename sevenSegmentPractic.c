char array[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
    int i=0;
    TRISB=0x00; //set porb as output
    TRISD=0xff;
    portb=0xff;//  Initialization
    while(1){
             if(portd.f0==0xff){
                                delay_ms(200);
                                if(portd.f0==0xff){
                                                   if(i>0)
                                                          i--;
                                                   portb=array[i];
                                                   }
                                }
             if(portd.f1==0xff){
                                delay_ms(200);
                                if(portd.f1==0xff){
                                                   if(i<9)
                                                          i++;
                                                   portb=array[i];
                                                   }
                                }


    
    }

    
    }
}