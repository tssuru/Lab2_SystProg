isPalindrome(int):
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        mov     eax, DWORD PTR [rbp-20]
        mov     DWORD PTR [rbp-8], eax
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L3:
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
        mov     DWORD PTR [rbp-12], edx
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, edx
        sal     eax, 2
        add     eax, edx
        add     eax, eax
        mov     edx, eax
        mov     eax, DWORD PTR [rbp-12]
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
.L2:
        cmp     DWORD PTR [rbp-20], 0
        jg      .L3
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-4]
        sete    al
        pop     rbp
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L6
.L7:
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, eax, 1234
        mov     edi, eax
        call    isPalindrome(int)
        add     DWORD PTR [rbp-4], 1
.L6:
        cmp     DWORD PTR [rbp-4], 999
        jle     .L7
        mov     eax, 0
        leave
        ret