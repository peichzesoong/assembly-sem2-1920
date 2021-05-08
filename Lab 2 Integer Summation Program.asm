;LAB 2  Integer Summation Program
;Write a program that prompts the user for three 32-bit integers, 
;stores them in an array, calculates the sum of the array, 
;and displays the sum on the screen.
;Name: Soong Pei Chze 



INCLUDE Irvine32.inc
.data
str1 BYTE "Enter a 32-bit integer: ",0  ;declaration of input prompt
str2 BYTE "The sum of the array: ",0    ;declaration of output prompt
array1 DWORD 3 DUP(?)                   ;array declaration    

.code
main PROC
    call Clrscr

    ;intialize eax,ebx and esi as 0
    mov eax,0
    mov ebx,0
    mov esi,0

    mov ecx,3                           ;declare to loop 3 times
   

    L1:
    mov edx, offset str1                ;move input prompt to edx
    call WriteString                    ;display input prompt stored in edx
    call ReadInt                        ;read input value from user and store it in eax
    mov [array1+esi],eax                ;move input value from eax into array
    add ebx,[array1+esi]                ;calculate sum of the array accumulate in ebx
    add esi,2                           ;array index increment

    loop L1                             ;execute loop L1

    mov eax,ebx                         ;move value of sum of the array in ebx to eax

    mov edx, offset str2                ;move output prompt to edx
    call WriteString                    ;display output prompt stored in edx
    call WriteInt                       ;display value of sum of the array in eax on screen
    call Crlf                           
    call DumpRegs                       ;display registers 
    call Crlf

    exit
main ENDP

END main