
_main:

;sevensegmentOneDigit.c,2 :: 		void main() {
;sevensegmentOneDigit.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevensegmentOneDigit.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevensegmentOneDigit.c,5 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevensegmentOneDigit.c,7 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;sevensegmentOneDigit.c,8 :: 		while(1){
L_main0:
;sevensegmentOneDigit.c,9 :: 		if(portd.f0==0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;sevensegmentOneDigit.c,10 :: 		delay_ms(200);
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
;sevensegmentOneDigit.c,11 :: 		if(portd.f0==0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;sevensegmentOneDigit.c,12 :: 		if(i<9){
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;sevensegmentOneDigit.c,13 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevensegmentOneDigit.c,14 :: 		}
L_main5:
;sevensegmentOneDigit.c,15 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegmentOneDigit.c,16 :: 		}
L_main4:
;sevensegmentOneDigit.c,17 :: 		}
L_main2:
;sevensegmentOneDigit.c,18 :: 		if(portd.f1==0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;sevensegmentOneDigit.c,19 :: 		delay_ms(200);
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
;sevensegmentOneDigit.c,20 :: 		if(portd.f1==0xff){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;sevensegmentOneDigit.c,21 :: 		if(i>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;sevensegmentOneDigit.c,22 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;sevensegmentOneDigit.c,23 :: 		}
L_main9:
;sevensegmentOneDigit.c,24 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegmentOneDigit.c,25 :: 		}
L_main8:
;sevensegmentOneDigit.c,26 :: 		}
L_main6:
;sevensegmentOneDigit.c,34 :: 		}
	GOTO       L_main0
;sevensegmentOneDigit.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
