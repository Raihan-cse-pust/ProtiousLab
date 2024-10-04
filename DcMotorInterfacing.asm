
_main:

;DcMotorInterfacing.c,1 :: 		void main() {
;DcMotorInterfacing.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;DcMotorInterfacing.c,3 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;DcMotorInterfacing.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;DcMotorInterfacing.c,5 :: 		while(1){
L_main0:
;DcMotorInterfacing.c,6 :: 		if(portd.f0==0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;DcMotorInterfacing.c,7 :: 		delay_ms(200);
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
;DcMotorInterfacing.c,8 :: 		if(portd.f0==0xff){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;DcMotorInterfacing.c,9 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;DcMotorInterfacing.c,10 :: 		portb.f1=0xff;
	BSF        PORTB+0, 1
;DcMotorInterfacing.c,12 :: 		}
L_main4:
;DcMotorInterfacing.c,13 :: 		}
	GOTO       L_main5
L_main2:
;DcMotorInterfacing.c,15 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;DcMotorInterfacing.c,16 :: 		portb.f1=0x00;
	BCF        PORTB+0, 1
;DcMotorInterfacing.c,17 :: 		}
L_main5:
;DcMotorInterfacing.c,20 :: 		}
	GOTO       L_main0
;DcMotorInterfacing.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
