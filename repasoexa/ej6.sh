#!/bin/bash

if [ $# -eq 1 ];then
read -p "Introduce a continuación el texto que quieras añadir: " txt
echo $txt >> $1
elif [ $# -eq 2 ];then
echo "Has introducido 2 parametros y el contenido de $1 se ha añadido a $2."
cat $1 >> $2
fi
