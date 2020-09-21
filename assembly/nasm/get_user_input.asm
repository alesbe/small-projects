; Define text constants
section .data
	text1 db "What is your name?: "
	text2 db "Hello, "

; Reserve 16 bytes for name
section .bss
	name resb 16

; Initialize
section .text
	global _start

; Main
_start:
	call _printTxt1 ; print text1
	call _getName ; gets user input
	call _printTxt2 ; print text2
	call _printName ; print name

	; exit syscall
	mov rax, 60
        mov rdi, 1
        syscall

_printTxt1:
	; write syscall
	mov rax, 1
	mov rdi, 1
	mov rsi, text1
	mov rdx, 20
	syscall
	ret

_getName:
	; read syscall
	mov rax, 0 ; syscall id
	mov rdi, 0 ; 0 = stdin, 1 = stdout, 2 = stderr
	mov rsi, name ; where to store the input
	mov rdx, 16 ; input size
	syscall
	ret

_printTxt2:
	; write syscall
	mov rax, 1
        mov rdi, 1
        mov rsi, text2
        mov rdx, 7
        syscall
	ret

_printName:
	; write syscall
	mov rax, 1
        mov rdi, 1
        mov rsi, name
        mov rdx, 16
        syscall
        ret
