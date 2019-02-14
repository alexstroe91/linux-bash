#!/bin/bash

read -p "Introduce dos numeros: " uno dos

if [ $uno -gt $dos ];then
	dif=$(expr $uno \- $dos)
	echo "La diferencia que hay entre $uno y $dos es $dif."
else
	dif=$(expr $dos \- $uno)
	echo "La diferencia que hay entre $dos y $uno es $dif."
fi

