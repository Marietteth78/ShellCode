bits 32

section .data
	
	
	message db '1337',10
	messagelen: equ $-message
	
	nombre db '42'
	nombrelen: equ $-nombre
	
	str: times 5 db 0,0  ; Allocate buffer of 5 bytes
	strlen: equ $ - str

	output db 'Entrez 42 pour return 1',0x0a,10
	outputlen: equ $-output
	
section .text
	global _start

_start : 
	
	mov eax, 4
	mov ebx, 1
	mov ecx, output
	mov edx, outputlen
	int 80h
	
	mov eax, 3
	mov ebx, 0
	mov ecx, str
	mov edx, strlen
	int 80h
	
	lea esi, [nombre]
    	lea edi, [str]
    	mov ecx, nombrelen
	
	rep cmpsb         ; comparison of ECX number of bytes
    	mov eax, 4        ; does not modify flags
    	mov ebx, 1
    	
	je _equal
	jne _nonequal
	
_equal:
	
	mov eax, 4
	mov ebx, 1
	mov ecx, message
	mov edx, messagelen
	int 80h
	
	jmp exit1
	
_nonequal:
	jmp exit0
	
	
	
exit0:	mov eax, 1
	mov ebx, 0
	int 80h

exit1:	mov eax, 1
	mov ebx, 1
	int 80h
