BITS 64

section .data

nombre db '1337'
nombrelen: equ $-nombre
 
segment .text
    global _start
_start:

 	mov rax, 1
	mov rdi, 1
	mov rsi, nombre
	mov rdx, nombrelen
	syscall
  
  mov rax, 60
	mov rdi, 0
	syscall
