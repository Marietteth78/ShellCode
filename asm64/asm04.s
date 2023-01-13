section .bss
    input: resb 64
    input_len: equ $-input

section .text
global _start

_start:
    ; input
    mov rax, 0
    mov rdi, 0
    mov rsi, input
    mov rdx, input_len
    syscall
	

    ; cmp pair
    mov rax, [input]
    and rax, 1
    cmp rax, 0
    je si_pair

    ; 1 si pair
    mov rax, 60
    mov rdi, 1
    syscall

si_pair:
  	mov rax, 60
	mov rdi, 0
	syscall
