global _ft_strdup
extern _ft_strlen
extern _ft_strcat
extern _malloc

segment .text

_ft_strdup:
	push rdi
	call _ft_strlen		; len -> rax
	mov rdi, rax		; rax -> len -> rdi
	inc rdi				; add 1 for '\0'
	call _malloc
	
	cmp rax, 0x00       ; check if malloc failed
	je error
	mov rdi, rax
	pop rsi
	call _ft_strcat
	ret
error:
	mov rax, 0x00       ; if malloc failed return NULL
	ret
