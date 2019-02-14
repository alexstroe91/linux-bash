#!/bin/bash


#DEBERES : CONTAR LAS VECES QUE HA INTENTADO ADIVINARL EL NUMERO.


inicio=1
fin=10
numero=`echo $((RANDOM%fin+inicio))`
seguir=1
intento=0

while [ $seguir -ne 0 ]
do
clear
read -p "Adivina el número: " adiv

if [ $numero -eq $adiv ];then
echo "¡Has adivinado el número!"
seguir=0
else
echo "No has adivinado el número, inténtalo de nuevo."
let intento=$intento+1
seguir=1

if [ $numero -gt $adiv ];then
echo "El número introducido es menor al que hay que adivinar."
else
echo "El número introducido es mayor al que hay que adivinar."
fi
fi
echo "Has hecho $intento intentos."
read -p "Pulsa una tecla para continuar." tecla
done
