#!/bin/bash

resp="no"

while [ $resp = "no" ]
do
clear
echo 	"Las configuraciones disponibles son: "
echo ""
echo    "A) Mostrar configuración de red."
echo ""
echo	"B) Mostrar nombre del equipo."
echo ""
echo	"C) Mostrar el directorio  actual."
echo ""
echo	"D) Salir."
echo ""
read -p "Elija la opción que quieras: " opcion
case $opcion in
   [a,A]) echo "La configuración de red es la siguiente: `ifconfig`" ;;
   [b,B]) echo "El nombre del equipo es el siguiente: `hostname`" ;;
   [c,C]) echo "El directorio actual es:   `pwd`" ;;
   [d,D]) read -p  "¿Desea salir?  [si/no]: " resp
		case $resp in 
		[si,Si,SI,sí,Sí,SÍ]) resp="si" ;;
		[no,NO,No]) resp="no" ;;
		esac
		;;
   *) echo "No has elegido ninguna de las opciones anteriores."
;;
esac
read -p "Pulse INTRO para continuar" tecla
done
