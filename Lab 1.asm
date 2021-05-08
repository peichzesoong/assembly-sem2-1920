;LAB 1 Summing the gaps between Array Values 
;Write a program with indexed addressing that calculates the sum of all the gaps between array elements. 
;The array elements are word type, sequenced in non decreasing order. Use the value array {0,2,5,9,10}. 
;These value has a gaps of 2,3,4 and 1 which the total of 10.
;Name: Soong Pei Chze

INCLUDE Irvine32.inc
.data 
array WORD 0,2,5,9,10			;the array given

.code
main PROC
	mov ecx,LENGTHOF array-1	;move size of array into ecx which serves as loop counter
	
	; initialize all as 0
	mov esi,0
	mov eax,0
	mov ebx,0
	mov edx,0
	mov edi,0

	L1:				;label of loop
	mov ax,[array+esi]		;move one value from array into ax
	add esi,2			;array index increment 
	mov bx,[array+esi]		;move the next value from array into bx 
	sub bx,ax			;subtraction between value in ax and value in bx to get gap between two values. Gap values stored in bx 
	add dx,bx			;add value in bx and value in dx to get sum of gaps between array elements. dx store sum of all gaps between array elements.
	call DumpRegs			;display output for each loop 

	loop L1				;run the loop
	exit
main ENDP
END main