//Internal to External
//Exchange two memory blocks of capacity 10 bytes
//exchange from 30h
//to starting from 3000h

org 0000h
	MOV r7,#0Ah
	MOV r0,#30h
	MOV DPTR,#3000h
	UP:MOV a,@r0
	MOVX @DPTR,a
	INC r0
	INC DPTR
	DJNZ r7,UP
	end