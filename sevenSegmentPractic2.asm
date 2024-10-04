
_main:

;sevenSegmentPractic2.c,2 :: 		void main() {
;sevenSegmentPractic2.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevenSegmentPractic2.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevenSegmentPractic2.c,5 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevenSegmentPractic2.c,6 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;sevenSegmentPractic2.c,7 :: 		while(1){
L_main0:
;sevenSegmentPractic2.c,8 :: 		if(portd.f0=0xff){
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;sevenSegmentPractic2.c,9 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;sevenSegmentPractic2.c,10 :: 		if(portd.f0=0xff){
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;sevenSegmentPractic2.c,11 :: 		if(i>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;sevenSegmentPractic2.c,12 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;sevenSegmentPractic2.c,13 :: 		}
L_main5:
;sevenSegmentPractic2.c,14 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentPractic2.c,15 :: 		}
L_main4:
;sevenSegmentPractic2.c,16 :: 		}
L_main2:
;sevenSegmentPractic2.c,19 :: 		if(portd.f1=0xff){
	BSF        PORTD+0, 1
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;sevenSegmentPractic2.c,20 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;sevenSegmentPractic2.c,21 :: 		if(portd.f1=0xff){
	BSF        PORTD+0, 1
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;sevenSegmentPractic2.c,22 :: 		if(i<9){
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;sevenSegmentPractic2.c,23 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevenSegmentPractic2.c,24 :: 		}
L_main9:
;sevenSegmentPractic2.c,25 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentPractic2.c,26 :: 		}
L_main8:
;sevenSegmentPractic2.c,27 :: 		}
L_main6:
;sevenSegmentPractic2.c,28 :: 		}
	GOTO       L_main0
;sevenSegmentPractic2.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
