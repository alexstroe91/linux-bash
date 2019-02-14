#!/bin/bash

permanecer=0

while [ $permanecer != 1 ]­
do
clear

echo "************************************************************************"
echo "**************************** CALCULADORA *******************************"
echo "************************************************************************"
echo "*****                                                              *****"
echo "*****                    ¿Qué quieres hacer?                       *****"
echo "*****                                                              *****"
echo "*****                       1. SUMAR.                              *****"
echo "*****                                                              *****"
echo "*****                       2. RESTAR.                             *****"
echo "*****                                                              *****"
echo "*****                       3. MULTIPLICAR.                        *****"
echo "*****                                                              *****"
echo "*****                       4. DIVIDIR.                            *****"
echo "*****                                                              *****"
echo "*****                       5. SALIR.                              *****"
echo "*****                                                              *****"
echo "************************************************************************"
echo "************************************************************************"

read -p "Indicame que quiéres hacer: " tecla

case $tecla in

1) clear
	echo "Has elegido sumar."
	read -p "Dame el primer número: " primer
	read -p "Dame el segundo número: " segundo
	resul=$(expr $primer \+ $segundo)
	echo "El resultado de la suma de $primer y $segundo es $resul." ;;

2) clear
	echo "Has elegido restar."
	read -p "Dame el primer número: " primer
	read -p "Dame el segundo número: " segundo
	resul=$(expr $primer \- $segundo)
	echo "El resultado de la resta de $primer y $segundo es $resul." ;;
3) clear
	echo "Has elegido multiplicar."
	read -p "Dame el primer número: " primermulti
	read -p "Dame el segundo número: " segundomulti
	resulmulti=$(expr $primermulti \* $segundomulti)
	echo "El resultado de la multiplicación de $primermulti y $segundomulti es $resulmulti." ;;
4) clear
	echo "Has elegido dividir."
	read -p "Dame el primer número: " primerdivi
	read -p "Dame el segundo número: " segundodivi
	resuldivi=$(expr $primerdivi \/ $segundodivi)
	echo "El resultado de la división de $primerdivi y $segundodivi es $resuldivi." ;;
5) clear
	echo "Has elegido salir."
	echo    "**********************************************************"
	read -p "*** ¿Quieres realmente salir? ****   1. SI    2. NO  ****  :  " salir
	echo    "**********************************************************"
	if [ $salir -eq 1 ];then
	echo""
	echo "Vas a salir." 
	permanecer=1
	else
	echo""
	echo "No vas a salir."
	permanecer=0
	fi

esac
echo""
echo    "******************************"
read -p "PULSA UNA TECLA PARA CONTINUAR." tcla
echo    "******************************"
done

