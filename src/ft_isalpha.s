global _ft_isalpha

segment .text

_ft_isalpha:
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
 
