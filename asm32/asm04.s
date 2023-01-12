section .bss
    input: resb 64
    input_len: equ $-input

section .text
global _start

_start:
    ; input
    mov eax, 3
    mov ebx, 0
    mov ecx, input
    mov edx, input_len
    int 0x80

    ; cmp pair
    mov eax, [input]
    and eax, 1
    cmp eax, 0
    je si_pair

    ; 1 si pair
    mov eax, 1
    mov ebx, 1
    int 0x80

si_pair:
    mov eax, 1
    mov ebx, 0
    int 0x80
