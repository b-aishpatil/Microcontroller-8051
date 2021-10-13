//Write an ALP to find largest number. Length of array is in R0 & Array starts from 3000H. Store result in R1.
org 0000h
	MOV r0,#0Ah
	MOV DPTR,#3000h
	MOVX a,@DPTR
	MOV b,a
	UP:INC DPTR
	MOVX a,@DPTR
	CJNE a,b,L1
	SJMP L2
	L1: JC L2
	MOV b,a
	MOV r1,b
	L2: DJNZ r0,UP
	exit: SJMP exit
	end
	//44 44 50 30 60 20