
_main:

;LedBlinking.c,1 :: 		void main() {
;LedBlinking.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;LedBlinking.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;LedBlinking.c,4 :: 		while(1){
L_main0:
;LedBlinking.c,5 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;LedBlinking.c,6 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;LedBlinking.c,7 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;LedBlinking.c,8 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LedBlinking.c,10 :: 		}
	GOTO       L_main0
;LedBlinking.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
