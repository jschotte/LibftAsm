global _ft_tolower

segment .text

_ft_tolower:
	cmp rdi, 'A'
	jl no
	cmp rdi, 'Z'
	jle yes
	jmp no

no:
	mov rax, rdi
 	ret

yes:
	mov rax, rdi
	add rax, 0x20
	ret
 
