#!/bin/sh

nasm -f elf32 asm01.s -o asm01.o
ld asm01.o -o asm01 -m elf_i386
rm asm01.o

nasm -f elf32 asm02.s -o asm02.o
ld asm02.o -o asm02 -m elf_i386
rm asm02.o

nasm -f elf32 asm03.s -o asm03.o
ld asm03.o -o asm03 -m elf_i386
rm asm03.o

nasm -f elf32 asm04.s -o asm04.o
ld asm04.o -o asm04 -m elf_i386
rm asm04.o

nasm -f elf32 asm05.s -o asm05.o
ld asm05.o -o asm05 -m elf_i386
rm asm05.o

nasm -f elf32 asm06.s -o asm06.o
ld asm06.o -o asm06 -m elf_i386
rm asm06.o
