global _ft_swap

section .text

_ft_swap:
	mov rdx, [rdi]
	xchg rdx, [rsi]
	mov [rdi], rdx
	ret
