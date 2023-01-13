section .data
    asm db 'asm01',0

section .text
global _start

_start:
    
    mov rax, 59
    mov rdi, asm
    mov rdx, 0
    syscall
