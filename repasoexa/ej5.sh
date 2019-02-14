#!/bin/bash

if [ $# -eq 2 ];then
read -p "¿Quieres sobreescribir el archivo $2?" resp
if [ $resp = "si" ];then 
cat $1 > $2
else
echo "Operación cancelada."
fi
fi

