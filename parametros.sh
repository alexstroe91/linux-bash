#!/bin/bash

if [ $# -eq 2 ]; then 
	echo "Ha introducido dos parámetros que son: '$1' y '$2' "

elif [ $# -eq 1 ]; then
	echo "Error. Ha introducido $# parámetro y tienes que introducir un mínimo de 2."

elif [ $# -gt 2 ];then 
	echo "Error. Ha introducido $# parametros y tienes que introducir solo 2."
fi
