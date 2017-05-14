section .bss
BUFF resb 1024
BUFF_SIZE equ $-BUFF

section .text
global _ft_cat

_ft_cat:
	loop:
	push rdi
	lea rsi, [rel BUFF]
	mov rax, 0x2000003
	mov rdx, BUFF_SIZE
	syscall

	jc disp
	cmp rax, 0
	jle disp
	mov rdx, rax
	mov rdi, 1
	mov rax, 0x2000004
	
	syscall
	pop rdi
	jmp	loop

disp:
	pop rdi
	ret

