global _ft_bzero

segment .text

_ft_bzero:
	push  rcx
	mov rcx, 0

	loop:
	cmp   rcx, rsi
	je    end
	inc   rcx
	mov [rdi], byte 0
	inc   rdi
	jmp   loop

	end:
	mov   rax, rcx
	pop   rcx
	ret
