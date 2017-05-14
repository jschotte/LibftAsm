global _ft_isascii

segment .text

_ft_isascii:
	cmp rdi, 0
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
 
