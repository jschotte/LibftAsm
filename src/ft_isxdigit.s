global _ft_isxdigit

segment .text

_ft_isxdigit:
	cmp rdi, '0'
	jl no 
	cmp rdi, '9'
	jle yes
	cmp rdi, 'a'
	jl no
	cmp rdi, 'f'
	jle yes
	jmp no

no:
	mov rax, 0
 	ret

yes:
	mov rax, 1
	ret
