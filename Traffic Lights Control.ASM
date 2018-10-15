; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
Start:

	MOV AL,30	; Green Red  
	MOV BL,1E
	CALL 80
	
	MOV AL,50	; Yellow Red
	MOV BL,5
	CALL 80
	
	MOV AL,90	; Red Red
	MOV BL,1
	CALL 80

	MOV AL,98	; Red Red/Yellow
	MOV BL,5
	CALL 80

	MOV AL,84	; Red Green
	MOV BL,1E
	CALL 80

	MOV AL,88	; Red Yellow
	MOV BL,5
	CALL 80

	MOV AL,90	; Red Red 
	MOV BL,1
	CALL 80

	MOV AL,D0	; Red/Yellow Red
	MOV BL,5
	CALL 80

	JMP Start	; 
			

; ----- Time Delay Procedure Stored At Address [80] -------------
	ORG	80	; Generate machine code from address [80]
	OUT 01

Rep:
	DEC	BL	; Subtract one from BL.
	JNZ	REP	; Jump back to Rep if BL was not Zero.

	RET		; Return from the procedure.

	END	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
