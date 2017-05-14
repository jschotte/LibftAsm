global _ft_abs

section .text

_ft_abs:
	mov rax, rdi
	cmp rdi, '0'
	jg end
	ret

end:
	mov rax, 0
	sub rax, rdi
	ret	
