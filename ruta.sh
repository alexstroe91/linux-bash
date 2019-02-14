ç#!/bin/bash
#Este programa sirve para crear archivos y rutas.
read -p "Dame una ruta y un fichero: " ruta fich

if [ -d $ruta ];then
	if [ -f $ruta/$fich ]; then
	echo "El fichero $fich existe en la ruta indicada."
	else
		read -p "El archivo indicado no existe. ¿Quieres crear el archivo?: " respuesta
			if [ $respuesta = si ];then
			touch $ruta/$fich
			echo "El archivo ha sido creado."
		elif [ $respuesta = no ];then
			echo "El archivo no ha sido creado."
			fi

fi
else
	read -p "La ruta indicada no existe. ¿Quieres crearla?: " resp_ruta
		if [ $resp_ruta = si ]; then
			mkdir $ruta
			echo "La ruta ha sido creada."
		elif [ $resp_ruta = no ]; then
			echo "La ruta no se ha creado."
		fi
	fi

