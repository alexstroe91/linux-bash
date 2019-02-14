#!/bin/bash

#pedimos un nr al usuario y un numero inicial, uno final y un incremento.

read -p "Dame un número inicial: " inic
read -p "Dame un número final: " fin
read -p "Dame el incremento de los números: " incr

for (( i=$inic; i <= $fin; i+=$incr ))
do
echo "$i"
done
