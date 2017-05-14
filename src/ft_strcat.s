global _ft_strcat

segment .text

_ft_strcat:
	push rdi

	loop:
		cmp [rdi], byte 0
		je  end
		inc rdi
		jmp loop

	end:
		cmp [rsi], byte 0
		je finish
		mov rax, [rsi]
		mov [rdi], al
		inc rdi
		inc rsi
		jmp end
	
	finish:
		mov [rdi], byte 0
		pop rax
		ret
