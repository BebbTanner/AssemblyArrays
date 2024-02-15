;Tanner Bebb
;Assembly language arrays
;I am going to use some kind of loop to print out myArray.

INCLUDE Irvine32.inc

.data

myNum SDWORD ?

.code
main PROC
	mov myNum, 1		;Storing the value of 1 into the myNum variable
again:
	cmp myNum, 10		;This will compare the most recent value in myNum to the value 10
	jg done				;If the value in myNum is greater than 10, It will stop the loop.

	mov eax, myNum		;Moves the current value of myNum into the eax register.
	call WriteInt		;This will write the integer to the screen.
	mov al, ' '			;Moves a space into the al register.
	call WriteChar		;This writes the char stored in the al register.
	inc myNum			;Increments the value of myNum.

	jmp again			;If the value of myNum is not 10, This will go back and run the loop again.
done:

	call Crlf
	call WaitMsg
	exit

main ENDP
END main