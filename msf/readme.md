./create_shellcode.sh asm01 > messagebox.bin
// On fait en sorte d'obtenir dans messagebox.bin le shellcode en "\x68..." avec des NullBytes

//Commande :

cat messagebox.bin | msfvenom -p - -a x86 --platform linux -e x86/shikata_ga_nai -fc -b '\x00'

// l'option -b va nous permettre de retirer les NullBytes



