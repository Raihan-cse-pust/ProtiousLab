
_main:

;relay.c,1 :: 		void main(void) {
;relay.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;relay.c,4 :: 		PORTB.RB0 = 0x00;    // Set RB0 as output (for controlling the relay)
	BCF        PORTB+0, 0
;relay.c,7 :: 		while(1) {
L_main0:
;relay.c,9 :: 		PORTB.RB0 = 0xff;  // Set RB0 HIGH to activate relay
	BSF        PORTB+0, 0
;relay.c,10 :: 		delay_ms(1000);   // Wait for 1 second
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
;relay.c,13 :: 		PORTB.RB0 = 0x00;  // Set RB0 LOW to deactivate relay
	BCF        PORTB+0, 0
;relay.c,14 :: 		delay_ms(1000);   // Wait for 1 second
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
;relay.c,15 :: 		}
	GOTO       L_main0
;relay.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
