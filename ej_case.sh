#!/bin/bash

inicio:

read -p "Pulsa una tecla: " tecla

case $tecla in

[a-z,A-Z]) echo "Ha pulsado una tecla." ;;
[0-9]) echo "Ha pulsado un número." ;;
*) echo "Ha pulsado un carácter especial" ;;

esac

read -p "Pulse una tecla para continuar: " tecla_fin

clear

goto inicio
