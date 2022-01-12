section .text
    global integerMulDiv

integerMulDiv:
    push ebp
    mov ebp,esp
    push ebx

    xor eax,eax

    mov ecx,[ebp+8]
    mov edx,[ebp+12]
    
    or edx,edx
    jz invalidDivisor

    imul edx,ecx
    mov ebx,[ebp+16]
    mov [ebx],edx

    mov eax,ecx
    cdq
    idiv dword [ebp+12]
    mov ebx,[ebp+20]
    mov [ebx],eax
    mov ebx,[ebp+24]
    mov [ebx],edx
    mov eax,1
    jmp exit

invalidDivisor:

exit:

    pop ebx
    pop ebp
    ret

