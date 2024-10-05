
_main:

;steperMotor.c,1 :: 		void main() {
;steperMotor.c,2 :: 		TRISD=0x00;
	CLRF       TRISD+0
;steperMotor.c,3 :: 		portd=0xff;
	MOVLW      255
	MOVWF      PORTD+0
;steperMotor.c,4 :: 		while(1){
L_main0:
;steperMotor.c,5 :: 		portd=0b00000011;
	MOVLW      3
	MOVWF      PORTD+0
;steperMotor.c,6 :: 		delay_ms(1000);
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
;steperMotor.c,8 :: 		portd=0b00000110;
	MOVLW      6
	MOVWF      PORTD+0
;steperMotor.c,9 :: 		delay_ms(1000);
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
;steperMotor.c,11 :: 		portd=0b00001100;
	MOVLW      12
	MOVWF      PORTD+0
;steperMotor.c,12 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;steperMotor.c,14 :: 		portd=0b00001001;
	MOVLW      9
	MOVWF      PORTD+0
;steperMotor.c,15 :: 		delay_ms(1000);
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
;steperMotor.c,16 :: 		}
	GOTO       L_main0
;steperMotor.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
