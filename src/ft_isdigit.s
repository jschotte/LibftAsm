global _ft_isdigit

segment .text

_ft_isdigit:
	cmp rdi, '0'
	jl no 
	cmp rdi, '9'
	jle yes
	jmp no

no:
	mov rax, 0
 	ret

yes:
	mov rax, 1
	ret
