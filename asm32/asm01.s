bit 32

global _start	
section .text
	

_start : 
	
	mov eax, 1
	mov ebx, 0
	int 80h
