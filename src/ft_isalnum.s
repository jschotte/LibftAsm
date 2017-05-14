global _ft_isalnum

segment .text

_ft_isalnum:
	cmp rdi, '0'
	jl no
	cmp rdi, '9'
	jle yes
	cmp rdi, 'A'
	jl no 
	cmp rdi, 'Z'
	jle yes
	cmp rdi, 'a'
	jl no
	cmp rdi, 'z'
	jle yes
	jmp no

no:
	mov rax, 0
 	ret

yes:
	mov rax, 1
	ret
 
