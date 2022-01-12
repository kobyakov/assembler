section .text
    global adder

adder:
    push ebp
    mov ebp,esp

    mov eax,[ebp+8]     ; eax = 'a'
    mov ecx,[ebp+12]    ; ecx = 'b'
    mov edx,[ebp+16]    ; edx = 'd'

    add eax,ecx
    add eax,edx

    pop ebp

    ret

