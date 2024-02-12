;Tanner Bebb
;Assembly language arrays
;I am going to use some kind of loop to print out myArray.

includelib irvine32.lib
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data

.code

main proc

invoke ExitProcess, 0
main endp
end main