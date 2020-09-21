section .data:
	msg db "Hello nasm!", 10

section .text:
	global _start

_start:
	; sys_write
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12
	syscall

	; sys_exit
	mov rax, 60
	mov rdi, 0
	syscall
