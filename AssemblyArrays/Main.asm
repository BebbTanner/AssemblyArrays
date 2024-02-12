;Tanner Bebb
;Assembly language arrays
;I am going to use some kind of loop to print out myArray.

INCLUDE Irvine32.inc

.data

myNum SDWORD 1

.code
main PROC

call Crlf
call WaitMsg
exit

main ENDP
END main