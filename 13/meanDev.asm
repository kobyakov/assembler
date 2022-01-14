section .data


section .text
    global calculateMeanStdDev

calculateMeanStdDev:
    push ebp
    mov ebp,esp
    sub esp,4

    xor eax,eax
    mov eax,[ebp+12]
    cmp ecx,1
    jle Done
    
    dec ecx
    mov [ebp-4],ecx         ; save n-1
    inc ecx

    mov edx,[ebp+8]         ; edx = 'a'
    fldz                    ; sum = 0.0

mean_loop:
    fadd qword [edx]        ; sum+=a
    add edx,8               ; a++
    dec ecx
    jnz mean_loop
    fidiv dword [ebp+12]    ; mean = sum/n


    mov edx,[ebp+8]
    mov ecx,[ebp+12]
    fldz                    ; st0=sum=0.0, st1 = mean
dev_loop:
    fld qword [edx]         ; st0*=a
    fsub st0, st2           ; st0 *= a-mean
    fmul st0,st0
    faddp
    add edx,8
    dec ecx
    jnz dev_loop
    
    fidiv dword [ebp-4]
    fsqrt

    mov eax,[ebp+20]
    fstp qword [eax]
    mov eax,[ebp+16]
    fstp qword [eax]
    mov eax,1
    
Done:
    mov esp,ebp    
    pop ebp
    ret


