section .text
    global calculateSum

calculateSum:
; prologue
    push ebp
    mov ebp,esp
    sub esp,12
    push ebx
    push esi
    push edi
; load arguments
    mov eax,[ebp+8]
    mov ebx,[ebp+12]
    mov ecx,[ebp+16]
    mov edx,[ebp+20]
    mov esi,[ebp+24]
    mov edi,[ebp+28]
; a+b+c
    mov [ebp-12],eax
    add [ebp-12],ebx
    add [ebp-12],ecx
; a2+b2+c2
    imul eax,eax
    imul ebx,ebx
    imul ecx,ecx
    mov [ebp-8],eax
    add [ebp-8],ebx
    add [ebp-8],ecx
; a3+b3+c3
    imul eax,[ebp+8]
    imul ebx,[ebp+12]
    imul ecx,[ebp+16]
    mov [ebp-4],eax
    add [ebp-4],ebx
    add [ebp-4],ecx
; save values
    mov eax,[ebp-12]
    mov [edx],eax
    mov eax,[ebp-8]
    mov [esi],eax
    mov eax,[ebp-4]
    mov [edi],eax
; epilogue
    pop edi,
    pop esi
    pop ebx
    mov esp,ebp
    pop ebp
    ret