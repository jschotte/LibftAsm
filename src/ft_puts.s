section .data
	string db "(null)", 10

section .text
	global _ft_puts
	extern _ft_strlen

null:
	mov rdi, 1
	lea rsi, [rel string]
	mov rdx, 7
	mov rax, 0x2000004
	syscall
	mov rax, 10
	pop r9
	pop r10
	ret

_ft_puts:
	push 	r10
	push 	r9
	
	cmp		rdi, 0
	je		null
	mov 	r10, rdi
	call 	_ft_strlen
	mov 	r9, rax
	mov     rax, 0x2000004
	mov     rdi, 1
	mov     rsi, r10
	mov     rdx, r9
	syscall

	push 	10
	mov rsi, rsp	
	mov     rax, 0x2000004
	mov     rdi, 1
	mov     rdx, 1
	syscall

	pop 	r10
	pop 	r9
	pop 	rsi	
	mov		rax, 1
	ret	
