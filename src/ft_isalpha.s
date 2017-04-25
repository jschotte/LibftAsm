global _ft_isalpha

segment .text

_ft_isalpha:
	cmp rdi, 'A'
	jl non
	jge oui

non:
	mov rax, 0
 	ret

oui:
	mov rax, 1
	ret
 
