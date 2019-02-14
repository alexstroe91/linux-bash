#!/bin/bash

for u in `cat usuarios.txt`
do
	echo "Vamos a crear los usuarios."
	sudo useradd -m -s /bin/bash $u
done
for u in `cat usuarios.txt`
do
	echo "Vamos a modificar la contraseña."
	sudo passwd $u
done
