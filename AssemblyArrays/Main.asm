;Tanner Bebb
;Assembly language arrays

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dwords

.data


.code

main proc

invoke ExitProcess, 0
main endp
end main