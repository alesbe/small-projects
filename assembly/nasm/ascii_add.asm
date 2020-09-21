;
;	Program: Sum two integers from 0 to 9
;	Author: Alvaro E
;	
;	Notes: We add 2 to rax, and then 5. _printResult adds another 48 to the existing value, because 48 is the ascii code of 0. So 48 + 7 in ascii is 7 in decimal. Add the last byte of rax (al), containing the result to digit, and print the result with syswrite.
;

section .data
	digit db 0, 10 ; 0 and \n 

section .text
	global _start

_start:
	add rax, 2 ; first number
	add rax, 5 ; second number
	
	call _printResult ; format to ascii and print

	; sysexit
	mov rax, 60
        mov rdi, 1
        syscall

_printResult:
	add rax, 48 ; 48 is 0 in ascii. 48 + 7 is 7 in ascii.
        mov [digit], al ; move the last byte of rax (contains the result) to digit

	; syswrite
        mov rax, 1
        mov rdi, 1
        mov rsi, digit
        mov rdx, 2
        syscall
	ret
