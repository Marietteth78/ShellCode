bits 32

section .data
	message db '1337', 4
	
section .text
	global _start

_start : 
	
	mov eax, 4
	mov ebx, 1
	mov ecx, message
	mov edx, 13+1
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
