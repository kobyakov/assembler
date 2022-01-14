section .data
r8_SfFtoC: dq 0.5555555556
r8_SfCtoF: dq 1.8
i4_32:     dd 32

section .text
    global FtoC
    global CtoF

FtoC:
    push ebp
    mov ebp,esp

    fld qword [r8_SfFtoC]
    fld qword [ebp+8]
    fild qword [i4_32]

    fsubp
    fmulp

    pop ebp
    ret


CtoF:
    push ebp
    mov ebp,esp

    fld qword [ebp+8]
    fmul qword [r8_SfCtoF]
    fiadd dword [i4_32]

    pop ebp
    ret
