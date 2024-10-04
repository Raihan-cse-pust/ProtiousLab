
_main:

;sevensegmentswitch.c,2 :: 		void main() {
;sevensegmentswitch.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevensegmentswitch.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevensegmentswitch.c,5 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;sevensegmentswitch.c,6 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;sevensegmentswitch.c,7 :: 		while(1)
L_main0:
;sevensegmentswitch.c,9 :: 		if(portd.f0==0xff)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;sevensegmentswitch.c,11 :: 		delay_ms(200);
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
;sevensegmentswitch.c,12 :: 		if(portd.f0==0xff)
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;sevensegmentswitch.c,14 :: 		if(i>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;sevensegmentswitch.c,16 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;sevensegmentswitch.c,17 :: 		}
L_main5:
;sevensegmentswitch.c,18 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegmentswitch.c,19 :: 		}
L_main4:
;sevensegmentswitch.c,20 :: 		}
L_main2:
;sevensegmentswitch.c,21 :: 		if(portd.f1==0xff)
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;sevensegmentswitch.c,23 :: 		delay_ms(200);
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
;sevensegmentswitch.c,24 :: 		if(portd.f1==0xff)
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;sevensegmentswitch.c,26 :: 		if(i<9)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      9
	SUBWF      main_i_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;sevensegmentswitch.c,28 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevensegmentswitch.c,29 :: 		}
L_main9:
;sevensegmentswitch.c,30 :: 		portb=array[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevensegmentswitch.c,31 :: 		}
L_main8:
;sevensegmentswitch.c,32 :: 		}
L_main6:
;sevensegmentswitch.c,34 :: 		}
	GOTO       L_main0
;sevensegmentswitch.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
