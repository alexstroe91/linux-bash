#!/bin/bash

echo -n "Dime cuál es tu nota: "
 read nota

if [ $nota -lt 3 ]; then
	echo "Tu nota es muy deficiente"
elif [ $nota -lt 5 ]; then
	echo "Tienes un suspenso"
elif [ $nota -lt 6 ]; then
	echo "Tienes un aprobado"
elif [ $nota -lt 7 ]; then
	echo "Tienes un bien"
elif [ $nota -lt 9 ]; then
	echo "Tienes un notable"
elif [ $nota -le 10 ]; then
	echo "Tienes un sobresaliente"

else
	echo "La nota $nota no es válida"

fi
