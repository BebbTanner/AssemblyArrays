;Tanner Bebb
;Assembly language arrays

includelib irvine32.lib
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword

.data

myArray WORD 1, 2, 3, 4, 5			;Created myArray

.code

main proc

mov esi, OFFSET myArray + 4			;What does this do?

invoke ExitProcess, 0
main endp
end main