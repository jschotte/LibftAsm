global _ft_strcmp

section .text

_ft_strcmp:
	sub rdi, rsi
	mov rax, rdi
	ret
