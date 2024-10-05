
_main:

;SevenSegmentFourDigit.c,2 :: 		void main() {
;SevenSegmentFourDigit.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;SevenSegmentFourDigit.c,6 :: 		TRISC=0x00;
	CLRF       TRISC+0
;SevenSegmentFourDigit.c,7 :: 		portb=0x00;
	CLRF       PORTB+0
;SevenSegmentFourDigit.c,8 :: 		portc=0x00;
	CLRF       PORTC+0
;SevenSegmentFourDigit.c,9 :: 		while(1){
L_main0:
;SevenSegmentFourDigit.c,10 :: 		for(i=0;i<=9999;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       main_i_L0+0, 0
	SUBLW      15
L__main13:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;SevenSegmentFourDigit.c,11 :: 		digit1=i/1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_digit1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit1_L0+1
;SevenSegmentFourDigit.c,12 :: 		digit2=(i/100)%10;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit2_L0+1
;SevenSegmentFourDigit.c,13 :: 		digit3=(i/10)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit3_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit3_L0+1
;SevenSegmentFourDigit.c,14 :: 		digit4=(i%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_digit4_L0+0
	MOVF       R0+1, 0
	MOVWF      main_digit4_L0+1
;SevenSegmentFourDigit.c,15 :: 		for(j=0;j<20;j++){
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main5:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      20
	SUBWF      main_j_L0+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;SevenSegmentFourDigit.c,16 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;SevenSegmentFourDigit.c,17 :: 		portb=array[digit1];
	MOVF       main_digit1_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegmentFourDigit.c,18 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;SevenSegmentFourDigit.c,19 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;SevenSegmentFourDigit.c,22 :: 		portc.f1=0xff;
	BSF        PORTC+0, 1
;SevenSegmentFourDigit.c,23 :: 		portb=array[digit2];
	MOVF       main_digit2_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegmentFourDigit.c,24 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;SevenSegmentFourDigit.c,25 :: 		portc.f1=0x00;
	BCF        PORTC+0, 1
;SevenSegmentFourDigit.c,26 :: 		portc.f2=0xff;
	BSF        PORTC+0, 2
;SevenSegmentFourDigit.c,29 :: 		portb=array[digit3];
	MOVF       main_digit3_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegmentFourDigit.c,30 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
	NOP
;SevenSegmentFourDigit.c,31 :: 		portc.f2=0x00;
	BCF        PORTC+0, 2
;SevenSegmentFourDigit.c,32 :: 		portc.f3=0xff;
	BSF        PORTC+0, 3
;SevenSegmentFourDigit.c,34 :: 		portb=array[digit4];
	MOVF       main_digit4_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;SevenSegmentFourDigit.c,35 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;SevenSegmentFourDigit.c,36 :: 		portc.f3=0x00;
	BCF        PORTC+0, 3
;SevenSegmentFourDigit.c,15 :: 		for(j=0;j<20;j++){
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;SevenSegmentFourDigit.c,39 :: 		}
	GOTO       L_main5
L_main6:
;SevenSegmentFourDigit.c,10 :: 		for(i=0;i<=9999;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;SevenSegmentFourDigit.c,40 :: 		}
	GOTO       L_main2
L_main3:
;SevenSegmentFourDigit.c,44 :: 		}
	GOTO       L_main0
;SevenSegmentFourDigit.c,45 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
