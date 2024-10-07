
_main:

;ACtoDC.c,1 :: 		void main() {
;ACtoDC.c,2 :: 		TRISC=0x00;
	CLRF       TRISC+0
;ACtoDC.c,3 :: 		portc=0x00;
	CLRF       PORTC+0
;ACtoDC.c,4 :: 		while(1){
L_main0:
;ACtoDC.c,5 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;ACtoDC.c,6 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;ACtoDC.c,7 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;ACtoDC.c,8 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;ACtoDC.c,10 :: 		}
	GOTO       L_main0
;ACtoDC.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
