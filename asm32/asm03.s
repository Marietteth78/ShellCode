bits 32

section .data
	message db '1337', 4
	
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
	
	mov eax, 4
	mov ebx, 1
	mov ecx, str
	mov edx, strlen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, message
	mov edx, 13+1
	int 80h
	

	mov eax, 1
	mov ebx, 0
	int 80h
