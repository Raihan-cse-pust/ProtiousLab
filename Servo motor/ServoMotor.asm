
_servoRotate0:

;ServoMotor.c,1 :: 		void servoRotate0(){
;ServoMotor.c,3 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate00:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate021
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate021:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate01
;ServoMotor.c,4 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;ServoMotor.c,5 :: 		Delay_us(800);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      18
	MOVWF      R13+0
L_servoRotate03:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate03
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate03
	NOP
;ServoMotor.c,6 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;ServoMotor.c,7 :: 		Delay_us(19200);
	MOVLW      50
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_servoRotate04:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate04
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate04
	NOP
	NOP
;ServoMotor.c,3 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;ServoMotor.c,8 :: 		}
	GOTO       L_servoRotate00
L_servoRotate01:
;ServoMotor.c,10 :: 		}
L_end_servoRotate0:
	RETURN
; end of _servoRotate0

_servoRotate90:

;ServoMotor.c,11 :: 		void servoRotate90(){
;ServoMotor.c,13 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate905:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate9023
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate9023:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate906
;ServoMotor.c,14 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;ServoMotor.c,15 :: 		Delay_us(1500);
	MOVLW      4
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_servoRotate908:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate908
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate908
	NOP
;ServoMotor.c,16 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;ServoMotor.c,17 :: 		Delay_us(18500);
	MOVLW      49
	MOVWF      R12+0
	MOVLW      11
	MOVWF      R13+0
L_servoRotate909:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate909
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate909
	NOP
	NOP
;ServoMotor.c,13 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;ServoMotor.c,18 :: 		}
	GOTO       L_servoRotate905
L_servoRotate906:
;ServoMotor.c,20 :: 		}
L_end_servoRotate90:
	RETURN
; end of _servoRotate90

_servoRotate180:

;ServoMotor.c,21 :: 		void servoRotate180(){
;ServoMotor.c,23 :: 		for(i=0;i<50;i++){
	CLRF       R1+0
	CLRF       R1+1
L_servoRotate18010:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__servoRotate18025
	MOVLW      50
	SUBWF      R1+0, 0
L__servoRotate18025:
	BTFSC      STATUS+0, 0
	GOTO       L_servoRotate18011
;ServoMotor.c,24 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;ServoMotor.c,25 :: 		Delay_us(2200);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      181
	MOVWF      R13+0
L_servoRotate18013:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate18013
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate18013
	NOP
	NOP
;ServoMotor.c,26 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;ServoMotor.c,27 :: 		Delay_us(17800);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      58
	MOVWF      R13+0
L_servoRotate18014:
	DECFSZ     R13+0, 1
	GOTO       L_servoRotate18014
	DECFSZ     R12+0, 1
	GOTO       L_servoRotate18014
	NOP
;ServoMotor.c,23 :: 		for(i=0;i<50;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;ServoMotor.c,28 :: 		}
	GOTO       L_servoRotate18010
L_servoRotate18011:
;ServoMotor.c,30 :: 		}
L_end_servoRotate180:
	RETURN
; end of _servoRotate180

_main:

;ServoMotor.c,31 :: 		void main() {
;ServoMotor.c,32 :: 		TRISB=0x00;
	CLRF       TRISB+0
;ServoMotor.c,33 :: 		portb=0x00;
	CLRF       PORTB+0
;ServoMotor.c,34 :: 		while(1){
L_main15:
;ServoMotor.c,35 :: 		servoRotate0();
	CALL       _servoRotate0+0
;ServoMotor.c,36 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;ServoMotor.c,37 :: 		servoRotate90();
	CALL       _servoRotate90+0
;ServoMotor.c,38 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;ServoMotor.c,39 :: 		servoRotate180();
	CALL       _servoRotate180+0
;ServoMotor.c,40 :: 		delay_ms(2000);
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;ServoMotor.c,41 :: 		}
	GOTO       L_main15
;ServoMotor.c,42 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
