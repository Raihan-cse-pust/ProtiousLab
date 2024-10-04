
_main:

;sevenSegmentPractic.c,2 :: 		void main() {
;sevenSegmentPractic.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevenSegmentPractic.c,4 :: 		TRISB=0x00; //set porb as output
	CLRF       TRISB+0
;sevenSegmentPractic.c,5 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevenSegmentPractic.c,6 :: 		portb=0xff;//  Initialization
	MOVLW      255
	MOVWF      PORTB+0
;sevenSegmentPractic.c,7 :: 		while(1){
L_main0:
;sevenSegmentPractic.c,8 :: 		if(portd.f0==0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;sevenSegmentPractic.c,9 :: 		delay_ms(200);
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
;sevenSegmentPractic.c,10 :: 		if(portd.f0==0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;sevenSegmentPractic.c,11 :: 		if(i>0)
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
;sevenSegmentPractic.c,12 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
L_main5:
;sevenSegmentPractic.c,13 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentPractic.c,14 :: 		}
L_main4:
;sevenSegmentPractic.c,15 :: 		}
L_main2:
;sevenSegmentPractic.c,16 :: 		if(portd.f1==0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;sevenSegmentPractic.c,17 :: 		delay_ms(200);
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
;sevenSegmentPractic.c,18 :: 		if(portd.f1==0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;sevenSegmentPractic.c,19 :: 		if(i<9)
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
;sevenSegmentPractic.c,20 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
L_main9:
;sevenSegmentPractic.c,21 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentPractic.c,22 :: 		}
L_main8:
;sevenSegmentPractic.c,23 :: 		}
L_main6:
;sevenSegmentPractic.c,30 :: 		}
	GOTO       L_main0
;sevenSegmentPractic.c,31 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
