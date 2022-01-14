section .data
r8_4p0: dq 4.0
r8_3p0: dq 3.0

section .text
    global calcSphere

calcSphere:
    push ebp
    mov ebp,esp

    xor eax,eax

    fld qword [ebp+8]   ; st(0) = r
    fldz                ; st(0) = 0.0, st(1) = r
    fcomip st0, st1 ; compares 0.0 to r
    fstp st0

    jp Done             ; jmp if unordered operands
    ja Done             ; jmp if r<0.0

    fld qword[ebp+8]    ; st(0) = r
    fld st0           ; st(1) = r
    fmul st0,st0    ; st(0) = r*r, st(1) = r
    fldpi               ; st(0) = pi
    fmul qword [r8_4p0] ; st(0) = 4*pi
    fmulp               ; st(0) = 4*pi*r*r

    mov edx,[ebp+16]
    fst qword [edx]

    fmulp               ; st(0) = 4*pi*r*r*r
    fdiv qword [r8_3p0] ; st(0) = 4*pi*r*r*r/3

    mov edx,[ebp+20]
    fstp qword [edx]

    mov eax,1

Done:
    pop ebp
    ret


