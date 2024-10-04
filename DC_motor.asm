
_main:

;DC_motor.c,1 :: 		void main(){
;DC_motor.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;DC_motor.c,3 :: 		TRISC=0xff;
	MOVLW      255
	MOVWF      TRISC+0
;DC_motor.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;DC_motor.c,5 :: 		while(1){
L_main0:
;DC_motor.c,6 :: 		if(portc.f1==0xff){
	BTFSS      PORTC+0, 1
	GOTO       L_main2
;DC_motor.c,7 :: 		delay_ms(100);
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
;DC_motor.c,8 :: 		if(portc.f1==0xff){
	BTFSS      PORTC+0, 1
	GOTO       L_main4
;DC_motor.c,9 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;DC_motor.c,10 :: 		portb.f1=0x00;
	BCF        PORTB+0, 1
;DC_motor.c,11 :: 		}
L_main4:
;DC_motor.c,13 :: 		}
	GOTO       L_main5
L_main2:
;DC_motor.c,16 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;DC_motor.c,17 :: 		portb.f1=0xff;
	BSF        PORTB+0, 1
;DC_motor.c,19 :: 		}
L_main5:
;DC_motor.c,21 :: 		}
	GOTO       L_main0
;DC_motor.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
