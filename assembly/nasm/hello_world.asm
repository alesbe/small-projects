;
; Hello world by Álvaro E
;

; In .data we store constants and variables that don't going to change 
section .data
	msg db 'Hello nasm!', 0xa ; Here we define the variable msg, db is define byte, and 0xa is a new line (/n)
	msg_len equ $-msg ; Here we define the variable len, contains the length of msg

; In .text we define our main program
section .text
	global _start ; Call _start

; Main Code
_start:
	; syscall sys_write
	mov edx, msg_len ; Put in edx register the length of our string
	mov ecx, msg ; Put in ecx register the string variable
	mov ebx, 1 ; File decryptor (stdout) 
	mov eax, 4 ; Syscall number (sys_write = 4)
	int 0x80 ; Call kernel

	; syscall sys_exit
	mov eax, 1 ; syscall number
	int 0x80 ; Call kernel
