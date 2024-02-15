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
done:

	call Crlf
	call WaitMsg
	exit

main ENDP
END main