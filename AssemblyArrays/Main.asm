;Tanner Bebb
;Assembly language arrays

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dwords

.data

myArray DW 1, 2, 3, 4, 5			;Created myArray

.code

main proc

invoke ExitProcess, 0
main endp
end main