
_main:

;DotMatrix.c,1 :: 		void main()
;DotMatrix.c,3 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;DotMatrix.c,4 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;DotMatrix.c,5 :: 		while(1)
L_main0:
;DotMatrix.c,7 :: 		PORTD = 0x80;
	MOVLW      128
	MOVWF      PORTD+0
;DotMatrix.c,8 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;DotMatrix.c,9 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;DotMatrix.c,11 :: 		PORTD = 0x40;
	MOVLW      64
	MOVWF      PORTD+0
;DotMatrix.c,12 :: 		PORTB = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;DotMatrix.c,13 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;DotMatrix.c,15 :: 		PORTD = 0x20;
	MOVLW      32
	MOVWF      PORTD+0
;DotMatrix.c,16 :: 		PORTB = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;DotMatrix.c,17 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
	NOP
;DotMatrix.c,19 :: 		PORTD = 0x10;
	MOVLW      16
	MOVWF      PORTD+0
;DotMatrix.c,20 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;DotMatrix.c,21 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;DotMatrix.c,23 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;DotMatrix.c,24 :: 		PORTB = 0x18;
	MOVLW      24
	MOVWF      PORTB+0
;DotMatrix.c,25 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;DotMatrix.c,27 :: 		PORTD = 0x04;
	MOVLW      4
	MOVWF      PORTD+0
;DotMatrix.c,28 :: 		PORTB = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;DotMatrix.c,29 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;DotMatrix.c,31 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;DotMatrix.c,32 :: 		PORTB = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;DotMatrix.c,33 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;DotMatrix.c,35 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;DotMatrix.c,36 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;DotMatrix.c,37 :: 		Delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;DotMatrix.c,38 :: 		}
	GOTO       L_main0
;DotMatrix.c,39 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
