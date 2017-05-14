global _ft_toupper

segment .text

_ft_toupper:
	cmp rdi, 'a'
	jl no
	cmp rdi, 'z'
	jle yes
	jmp no

no:
	mov rax, rdi
 	ret

yes:
	mov rax, rdi
	sub rax, 0x20
	ret
 
