#!/bin/bash

if  [ -r $1 ];then
echo "El archivo tiene permisos de lectura."
else
echo "El archivo no tiene permisos de lectura."
fi
if [ -w $1 ];then
echo "El archivo tiene permios de escritura."
else 
echo "El archivo no tiene permisos de escritura."
fi
if [ -x $1 ];then
echo "El archivo tiene permisos de ejecución."
else
echo "El archivo no tiene permisos de ejecución."
fi
