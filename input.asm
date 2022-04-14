section .bss
	usize_input equ 24
	uinput resb usize_input

section .data
	question db "enter your name please:"
	len_question equ $ - question

section .text
	global _start
	_start:
		;------------------------------------
		; print question
		mov rax, 1
		mov rdi, 1
		mov rsi, question
		mov rdx, len_question
		syscall

		;------------------------------------
		; input user
		mov rax, 0
		mov rdi, 0
		mov rsi, uinput
		mov rdx, usize_input
		syscall
		push rax
	
		;-----------------------------------
		; print response of the user
		mov rax, 1
		mov rdi, 1
		mov rsi, uinput
		mov rdx, usize_input
		syscall	

		;------------------------------------
		; exit
		mov rax, 60
		mov rdi, 0
		syscall
		
