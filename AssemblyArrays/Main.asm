;DO NOT FORGET TO TURN WINDOWS DEFENDER BACK ON!!!!!!
;Tanner Bebb
;Assembly language arrays
;I am going to use some kind of loop to print out myArray.

INCLUDE Irvine32.inc

.data

myNum1 SDWORD ?
myNum2 SDWORD ?

.code
main PROC

;For loop that prints out numbers 1 - 10.
;mov myNum1, 1			;Storing the value of 1 into the myNum1 variable
;again:
;	cmp myNum1, 10		;This will compare the most recent value in myNum to the value 10
;	jg done				;If the value in myNum is greater than 10, It will stop the loop.

;	mov eax, myNum1		;Moves the current value of myNum1 into the eax register.
;	call WriteInt		;This will write the integer to the screen.
;	mov al, ' '			;Moves a space into the al register.
;	call WriteChar		;This writes the char stored in the al register.
;	inc myNum1			;Increments the value of myNum1.

;	jmp again			;If the value of myNum is not 10, This will go back and run the loop again.


;For loop that prints out powers of 2.
mov myNum2, 0					;Stores the value of 0 into myNum2
again2:
	cmp myNum2, 8				;Compares myNum2 to the value of 8.
	jg done						;If myNum2 is greater than 8 it will jump to the done command.
	mov eax, 1					;Move the value of 1 into the eax register.
	mov cl, BYTE PTR myNum2		;Move myNum2 into the cl register. This is used for the shift command.
	shl eax, cl					;This will Multiply eax by cl? Using powers of 2.
	call WriteInt				;Writes the current integer stored in myNum2.
	mov al, ' '					;Stores the space character into the al register.
	call WriteChar				;Writes the character that is stored in the al register.
	inc myNum2					;Increments the value of myNum2.
	jmp again2					;Runs the loop again until the starting conditions are met.

done:
	call Crlf
	call WaitMsg
	exit

main ENDP
END main