extern printf

section .data
array: dd 10000h,20000h,30000h,40000h
length: equ ($-array)/4
format: db "%x",10,0


section .text
global main
main:
	mov edi,array
	mov ecx,length
	mov eax,0

LP:
	add eax,[edi]
	add edi,4
	loop LP

	push eax
	push format
	call printf
	add esp,8

	mov eax, 0
	ret