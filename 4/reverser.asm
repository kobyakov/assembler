section .text
    global reverser

reverser:
    push ebp
    mov ebp,esp
    push esi
    push edi

    xor eax,eax
    mov edi,[ebp+8]
    mov esi,[ebp+12]
    mov ecx,[ebp+16]
    test ecx, ecx

    lea esi,[esi+ecx*4-4]
    pushfd
    std
@@: lodsd
    mov [edi],eax
    add edi,4
    dec ecx
    jnz @@

    popfd
    mov eax,1
    
    pop edi
    pop esi
    pop ebp

    ret

