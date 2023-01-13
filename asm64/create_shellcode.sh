#!/bin/bash

echo "Dumping shellcode for [$1]..."
for i in $(objdump -d $1 | grep "^ " | cut -f2); do
	echo -n '\x'$i
done
echo
