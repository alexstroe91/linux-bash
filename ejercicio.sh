#!/bin/bash
#el programa te dice si eres mayor de edad según la edad que insertes

read -p "Inserte su edad: " respuesta
	if [ $respuesta -lt 18 ]; then
		echo "Eres menor de edad. Tienes $respuesta años. "
	
	elif [ $respuesta -ge 18 ]; then
		read -p "¿Cuál es tu año de nacimiento?: " año_nacimiento


	fi

