extern printf

section .data
num1: dd 10h
num2: dd 20h
ans: dd 0

section .rodata
format: db "%u",10,0


section .text
global main
main:
	mov eax, [num1]
	add eax, [num2]
	mov [ans], eax

	push dword [ans]
	push format
	call printf

	add esp, 8
	mov eax, 0
	ret