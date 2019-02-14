#!/bin/bash

seguir=1

while [ $seguir != 0 ]
do
clear

echo "Puedes hacer esto: "
echo""
echo "1.Sumar"
echo""
echo "2.Restar"
echo""
echo "3.Multiplicar"
echo""
echo "4.Dividir"
echo""
echo "5.Salir"
echo""

read -p "¿Qué quieres hacer?: " hacer

case $hacer in
1) read -p "Dame el primer número: " primer
   read -p "Dame el segundo numero: " segundo
resul=$(expr $primer \+ $segundo)
echo "El resultado de la suma de '$primer' + '$segundo' es '$resul'." ;;

2) read -p "Dame el primer número: " primer1
   read -p "Dame el segundo numero: " segundo1
resul1=$(expr $primer1 \- $segundo1)
echo "El resultado de la resta de '$primer1' - '$segundo1' es '$resul1'." ;;

3) read -p "Dame el primer número: " primer2
   read -p "Dame el segundo numero: " segundo2
resul2=$(expr $primer2 \* $segundo2)
echo "El resultado de la multiplicación de '$primer2' * '$segundo2' es '$resul2'." ;;

4) read -p "Dame el primer número: " primer3
   read -p "Dame el segundo numero: " segundo3
resul3=$(expr $primer3 \/ $segundo3)
echo "El resultado de la división de '$primer3' / '$segundo3' es '$resul3'." ;;

5) read -p "Confirma para salir.     1. si    2. no: " tecla
	if [ $tecla -eq 1 ];then
	seguir=0
	else 
	seguir=1
	fi
esac
echo""
echo""
read -p "Pulsa una tecla para continuar." xpe
done
