extern printf

section .data
quote db "machines do feel",10,0
quoteLen equ($-quote)
message times quoteLen db 0

section .text
global main
main:
	mov esi,0
	mov ecx,quoteLen

LP:
	mov al, [quote+esi]
	mov [message+esi],al
	inc esi
	loop LP

	push quote
	call printf
	add esp, 4

	push message
	call printf
	add esp, 4

	mov eax, 0
	ret