%define DWORD_SIZE 4
section .data
    align 4
addOpTable:
    dd mmxPaddb, mmxPaddsb, mmxPaddusb
    dd mmxPaddw, mmxPaddsw, mmxPaddusw, mmxPaddd
addOpTableCount equ($-addOpTable) / DWORD_SIZE

section .text
    global mmxAdd

mmxAdd:
    push ebp
    mov ebp,esp
    
    mov eax,[ebp+24]
    cmp eax,addOpTableCount
    jae BadAddOp

    movq mm0,[ebp+8]
    movq mm1,[ebp+16]
    jmp [addOpTable+eax*DWORD_SIZE]

mmxPaddb:
    paddb mm0,mm1
    jmp SaveResult
mmxPaddsb:
    paddsb mm0,mm1
    jmp SaveResult
mmxPaddusb:
    paddusb mm0,mm1
    jmp SaveResult
mmxPaddw:
    paddw mm0,mm1
    jmp SaveResult
mmxPaddsw:
    paddw mm0,mm1
    jmp SaveResult
mmxPaddusw:
    paddw mm0,mm1
    jmp SaveResult
mmxPaddd:
    paddd mm0,mm1
    jmp SaveResult
BadAddOp:
    pxor mm0,mm0
SaveResult:
    mov edx,[ebp+28]
    movq [edx],mm0
    pshufw mm2,mm0, 01001110b ; swap high 7 low dwords
    movq [edx+8],mm2
    emms

    pop ebp
    ret




