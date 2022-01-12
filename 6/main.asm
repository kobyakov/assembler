extern printf

section .data
array: dw 0, 0, 0, 1, 0, 0
length: equ ($-array)/4
found_message: db "found",10,0
not_found_message: db "not found",10

section .text
global main
main:
	mov ebx,array
	mov ecx,length

LP:
	cmp dword [ebx],0
	jnz found
	add ebx,2
	loop LP
	jmp notfound

found:
	push found_message
	jmp print

notfound:
	push not_found_message
	jmp print

print:
	call printf
	add esp,4

	mov eax, 0
	ret