
_main:

;sevenSegmentMultipleLight.c,2 :: 		void main() {
;sevenSegmentMultipleLight.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevenSegmentMultipleLight.c,5 :: 		TRISC=0x00;
	CLRF       TRISC+0
;sevenSegmentMultipleLight.c,6 :: 		portb=0x00;
	CLRF       PORTB+0
;sevenSegmentMultipleLight.c,7 :: 		portc=0x00;
	CLRF       PORTC+0
;sevenSegmentMultipleLight.c,8 :: 		while(1){
L_main0:
;sevenSegmentMultipleLight.c,9 :: 		for(i=0;i<=9999;i++){
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
;sevenSegmentMultipleLight.c,10 :: 		digit1=i/1000;
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
;sevenSegmentMultipleLight.c,11 :: 		digit2=(i/100)%10;
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
;sevenSegmentMultipleLight.c,12 :: 		digit3=(i/10)%10;
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
;sevenSegmentMultipleLight.c,13 :: 		digit4=i%10;
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
;sevenSegmentMultipleLight.c,14 :: 		for(j=0;j<50;j++){
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
	MOVLW      50
	SUBWF      main_j_L0+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;sevenSegmentMultipleLight.c,15 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;sevenSegmentMultipleLight.c,16 :: 		portb=array[digit1];
	MOVF       main_digit1_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentMultipleLight.c,17 :: 		delay_ms(5);
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
;sevenSegmentMultipleLight.c,18 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;sevenSegmentMultipleLight.c,20 :: 		portc.f1=0xff;
	BSF        PORTC+0, 1
;sevenSegmentMultipleLight.c,21 :: 		portb=array[digit2];
	MOVF       main_digit2_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentMultipleLight.c,22 :: 		delay_ms(5);
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
;sevenSegmentMultipleLight.c,23 :: 		portc.f1=0x00;
	BCF        PORTC+0, 1
;sevenSegmentMultipleLight.c,25 :: 		portc.f2=0xff;
	BSF        PORTC+0, 2
;sevenSegmentMultipleLight.c,26 :: 		portb=array[digit3];
	MOVF       main_digit3_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentMultipleLight.c,27 :: 		delay_ms(5);
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
;sevenSegmentMultipleLight.c,28 :: 		portc.f2=0x00;
	BCF        PORTC+0, 2
;sevenSegmentMultipleLight.c,30 :: 		portc.f3=0xff;
	BSF        PORTC+0, 3
;sevenSegmentMultipleLight.c,31 :: 		portb=array[digit4];
	MOVF       main_digit4_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentMultipleLight.c,32 :: 		delay_ms(5);
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
;sevenSegmentMultipleLight.c,33 :: 		portc.f3=0x00;
	BCF        PORTC+0, 3
;sevenSegmentMultipleLight.c,14 :: 		for(j=0;j<50;j++){
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;sevenSegmentMultipleLight.c,35 :: 		}
	GOTO       L_main5
L_main6:
;sevenSegmentMultipleLight.c,9 :: 		for(i=0;i<=9999;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevenSegmentMultipleLight.c,37 :: 		}
	GOTO       L_main2
L_main3:
;sevenSegmentMultipleLight.c,42 :: 		}
	GOTO       L_main0
;sevenSegmentMultipleLight.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
