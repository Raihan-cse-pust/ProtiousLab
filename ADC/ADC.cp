#line 1 "C:/Users/Raihan/Desktop/ProteusLab/ADC/ADC.c"
int valADC;

char x[4];
void main()
{

 UART1_Init(9600);

 ADC_Init();


 while(1)
 {

 valADC = ADC_Read(3);

 IntToStr(valADC,x);

 UART1_Write_Text("Analog value = ");
 UART1_Write_Text(x);

 strcpy(x,"");
 UART1_Write(13);
 Delay_ms(1000);

 }
}
