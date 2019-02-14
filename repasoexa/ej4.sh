#!/bin/bash

if [ -d dir1 ];then
echo "ERROR. El directorio ya existe."
else
mkdir dir1
cd dir1
touch fich.txt
ls -d /dev | grep ^[Tt].*[0-9]$ > fich.txt
cat /etc/passwd >> fich.txt
cat fich.txt | more
fi
