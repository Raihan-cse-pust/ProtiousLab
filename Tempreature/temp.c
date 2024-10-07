sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;
// End LCD module connections
char txt1[]="Temperature = ";
float valADC,temperature;

char x[4];

void main()
{
    ADCON1 = 0x06;

    CMCON=0x07;
    
    ADC_init();
    lcd_init();
    
    lcd_cmd(_lcd_clear);
    lcd_cmd(_lcd_cursor_off);
    lcd_out(1,1,"Showing temperature");
    delay_ms(2000);
    lcd_cmd(_lcd_clear);



    while(1)
    {
       valADC = ADC_Read(3);
       temperature = (valADC*4.88)/20;
       FloatTostr(temperature,x);
       lcd_cmd(_lcd_clear);
       Lcd_out(1,1,"Temp = ");
       Lcd_out(1,8,x);
       strcpy(x,"");
       lcd_chr(1,16,223);
       lcd_out_cp("c");
       delay_ms(1500);
    
    }
}