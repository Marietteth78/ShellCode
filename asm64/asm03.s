BITS 64

section .data

motdepasse db '42'
motdepasselen: equ $-motdepasse

str times 5 db 0,0  ; Allocate buffer of 5 bytes
strlen: equ $ - str

output db 'Entrez le nombre 42 pour return 1',0x0a,10
outputlen equ $-output

succes db 'Bravo',0x0a,10
succeslen: equ $-succes

erreur db 'Dommage',0x0a,10
erreurlen: equ $-erreur

nombre db '1337', 10
nombrelen: equ $-nombre
 

section .bss
	

segment .text
    global _start
_start:

	mov rax, 1
	mov rdi, 1
	mov rsi, output
	mov rdx, outputlen
	syscall
	
	mov rax, 0
	mov rdi, 0
	mov rsi, str
	mov rdx, strlen
	syscall
	
	lea rsi, [motdepasse]
    	lea rdi, [str]
    	mov rcx, motdepasselen
	
	rep cmpsb         ; comparison of ECX number of bytes
    	mov eax, 4        ; does not modify flags
    	mov ebx, 1
	
	je _equal
	jne _nonequal
	
	_equal:
	mov rax, 1
	mov rdi, 1
	mov rsi, succes
	mov rdx, succeslen
	syscall
	
	mov rax, 1
	mov rdi, 1
	mov rsi, nombre
	mov rdx, nombrelen
	syscall
	
	jmp exit1
	
	_nonequal:
	mov rax, 1
	mov rdi, 1
	mov rsi, erreur
	mov rdx, erreurlen
	syscall
	jmp exit0
	
	
	
exit0:	mov rax, 60
	mov rdi, 0
	syscall

exit1:	mov rax, 60
	mov rdi, 1
	syscall	
