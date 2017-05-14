global _ft_isprint

segment .text

_ft_isprint:
	cmp rdi, ' '
	jl no 
	cmp rdi, '~'
	jle yes
	jmp no

no:
	mov rax, 0
 	ret

yes:
	mov rax, 1
	ret
 
