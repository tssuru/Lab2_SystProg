isPalindrome(int):
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        cmp     DWORD PTR [rbp-20], 0
        js      .L2
        mov     ecx, DWORD PTR [rbp-20]
        movsx   rax, ecx
        imul    rax, rax, 1717986919
        shr     rax, 32
        mov     edx, eax
        sar     edx, 2
        mov     eax, ecx
        sar     eax, 31
        sub     edx, eax
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        add     eax, eax
        sub     ecx, eax
        mov     edx, ecx
        test    edx, edx
        jne     .L3
        cmp     DWORD PTR [rbp-20], 0
        je      .L3
.L2:
        mov     eax, 0
        jmp     .L4
.L3:
        mov     DWORD PTR [rbp-4], 0
        jmp     .L5
.L6:
        mov     edx, DWORD PTR [rbp-20]
        movsx   rax, edx
        imul    rax, rax, 1717986919
        shr     rax, 32
        mov     ecx, eax
        sar     ecx, 2
        mov     eax, edx
        sar     eax, 31
        sub     ecx, eax
        mov     eax, ecx
        sal     eax, 2
        add     eax, ecx
        add     eax, eax
        sub     edx, eax
        mov     DWORD PTR [rbp-8], edx
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        add     eax, eax
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-8]
        add     eax, edx
        mov     DWORD PTR [rbp-4], eax
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        imul    rdx, rdx, 1717986919
        shr     rdx, 32
        mov     ecx, edx
        sar     ecx, 2
        cdq
        mov     eax, ecx
        sub     eax, edx
        mov     DWORD PTR [rbp-20], eax
.L5:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-4]
        jg      .L6
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-4]
        je      .L7
        mov     eax, DWORD PTR [rbp-4]
        movsx   rdx, eax
        imul    rdx, rdx, 1717986919
        shr     rdx, 32
        mov     ecx, edx
        sar     ecx, 2
        cdq
        mov     eax, ecx
        sub     eax, edx
        cmp     DWORD PTR [rbp-20], eax
        jne     .L8
.L7:
        mov     eax, 1
        jmp     .L10
.L8:
        mov     eax, 0
.L10:
        nop
.L4:
        pop     rbp
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L12
.L13:
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, eax, 1234
        mov     edi, eax
        call    isPalindrome(int)
        add     DWORD PTR [rbp-4], 1
.L12:
        cmp     DWORD PTR [rbp-4], 999
        jle     .L13
        mov     eax, 0
        leave
        ret