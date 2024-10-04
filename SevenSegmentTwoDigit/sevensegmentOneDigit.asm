
_main:

;sevensegmentOneDigit.c,2 :: 		void main() {
;sevensegmentOneDigit.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevensegmentOneDigit.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevensegmentOneDigit.c,5 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;sevensegmentOneDigit.c,6 :: 		while(1){
L_main0:
;sevensegmentOneDigit.c,7 :: 		for(i=0;i<=9;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       main_i_L0+0, 0
	SUBLW      9
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;sevensegmentOneDigit.c,9 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegmentOneDigit.c,10 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;sevensegmentOneDigit.c,7 :: 		for(i=0;i<=9;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevensegmentOneDigit.c,12 :: 		}
	GOTO       L_main2
L_main3:
;sevensegmentOneDigit.c,14 :: 		}
	GOTO       L_main0
;sevensegmentOneDigit.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
