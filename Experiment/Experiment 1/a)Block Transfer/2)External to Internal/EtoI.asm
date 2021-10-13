//External to Internal
//Exchange two memory blocks of capacity 10 bytes
//exchange from 3000h
//to starting from 30h

org 0000h
	MOV r7,#0Ah
	MOV r0,#30h
	MOV DPTR,#3000h
	UP:MOVX a,@DPTR
	MOV @r0,a
	INC r0
	INC DPL
	DJNZ r7,UP
	end
