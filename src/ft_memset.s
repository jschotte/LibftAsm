global _ft_memset

segment .text

_ft_memset:
	push  rcx
	mov rcx, 0

	loop:
	cmp   rcx, rdx
	je    end
	inc   rcx
	mov [rdi], rsi
	inc   rdi
	jmp   loop

	end:
	mov   rax, rcx
	pop   rcx
	ret
