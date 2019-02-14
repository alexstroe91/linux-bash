#!/bin/bash

usuario="pepe"

while [ $usuario != 0 ]
do
clear
read -p "Dame un usuario o pulsa 0 para salir: " usuario
busqueda=`grep ^$usuario: /etc/passwd | cut -d: -f1`
	if [ $usuario != 0 ];then
		if [ "$busqueda" = "$usuario" ];then
			echo "El usuario '$usuario' está en el sistema."
			else
			echo "El usuario no existe en el sistema."
		fi
		read -p "Pulsa una tecla para continuar." tecla
	else
		read -p "¿Estas seguro de que quieres salir? [si/no]: " resp
		if [ $resp = "si" ];then
			echo "Vas a salir."
			usuario=0
			else
			echo "No vas a salir."
			usuario="pepe"
		fi
	fi
done
