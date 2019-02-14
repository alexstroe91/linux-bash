#!/bin/bash

seguir=1

while [ $seguir != 0 ]
do

echo ""
echo "Tienes las siguiestes opciones: "
echo ""
echo "1. Conexiones actuales."
echo ""
echo "2. Contenido del directorio actual."
echo ""
echo "3. Limpiar pantalla y salir del menú."
echo ""

read -p "¿Qué quieres hacer?: " resp

echo ""

case $resp in
	1) echo "Se van a mostrar las conexiones actuales: "
	read -p "*** Pulsa la tecla INTRO para continuar ***" intro
	who ;;
	2) echo "El contenido del directorio actual es: "
	ls ;;
	3) clear
	echo "Vas a salir del menú."
	seguir=0 ;;
esac
read -p "*** Pulsa la tecla INTRO para continuar ***" tecla
done