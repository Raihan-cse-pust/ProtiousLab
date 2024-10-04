
_main:

;led_blinking.c,1 :: 		void main() {
;led_blinking.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;led_blinking.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;led_blinking.c,5 :: 		while(1){
L_main0:
;led_blinking.c,6 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;led_blinking.c,7 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;led_blinking.c,8 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;led_blinking.c,9 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;led_blinking.c,11 :: 		}
	GOTO       L_main0
;led_blinking.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
