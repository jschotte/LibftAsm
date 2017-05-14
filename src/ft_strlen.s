global _ft_strlen

segment .text

_ft_strlen:
	push  rcx
	mov   rcx, 0

	loop:
	cmp   [rdi], byte 0
	jz    end
	inc   rcx
	inc   rdi
	jmp   loop

	 end:
	 mov   rax, rcx
	 pop   rcx
	 ret
