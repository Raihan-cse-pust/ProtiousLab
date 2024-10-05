#line 1 "C:/Users/Raihan/Desktop/ProteusLab/SteperMotor/steperMotor.c"
void main() {
 TRISD=0x00;
 portd=0xff;
 while(1){
 portd=0b00000011;
 delay_ms(1000);

 portd=0b00000110;
 delay_ms(1000);

 portd=0b00001100;
 delay_ms(1000);

 portd=0b00001001;
 delay_ms(1000);
 }
}
