#!/bin/bash

# scritp que verifica si existe un usuario dado en el sistema.

read -p "Dame el usuario de login: " usu
comprobar=`cut -d: -f1 /etc/passwd | grep "$usu"`

if [ "$usu" = "$comprobar" ];then
echo "El usuario $usu está en el sistema."
else
echo "El usuario no existe en el sistema."
fi
 
