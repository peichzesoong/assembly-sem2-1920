;LAB 2  Test Score Evaluation
;Create a procedure that receives an integer value between 0 and 100, 
;and display a single capital letter on the screen. 
;The letter returned by the procedure should be according to the following ranges. 
;90 to 100 ----- A
;80 to 89 ------ B
;70 to 79 ------ C
;60 to 69 ------ D
;0 to 59 ------- F
;Name: Soong Pei Chze 



INCLUDE Irvine32.inc
.data
str1 BYTE "Enter an integer value between 0-100: ",0    ;declaration of input prompt

.code
main PROC
    call Clrscr
    mov edx, offset str1    	;move input prompt to edx
    call WriteString        	;to display input prompt stored in edx
    call ReadInt            	;to read input value from user and store it in eax

    ; if-else conditions to return grade letter based on input value
    .IF eax >= 90           	;90 to 100 ----- A
      mov al,'A'            	;move grade letter into al
    .ELSEIF eax >= 80       	;80 to 89 ------ B
      mov al,'B'            	;move grade letter into al
    .ELSEIF eax >= 70       	;70 to 79 ------ C
      mov al,'C'            	;move grade letter into al
    .ELSEIF eax >= 60       	;60 to 69 ------ D
      mov al,'D'            	;move grade letter into al
    .ELSE                   	;0 to 59 ------- F
      mov al,'F'            	;move grade letter into al
    .ENDIF

    call WriteChar          	;display grade letter in al 
    call Crlf

    exit
main ENDP

END main

