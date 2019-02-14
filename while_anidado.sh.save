#!/bin/bash
#
permanecer="si"

while [ $permanecer != "t" ]
do
clear
echo "Las opciones son las siguientes: "
echo""
echo "A. Gestión de Usuarios."
echo""
echo "B. Gestión de Grupos."
echo""
echo "C. Salir"
  read -p "Elija la opción que desees: " opcion
  case $opcion in 
  [a,A]) echo "Has elegido la Gestión de Usuarios."
	opcion=a
  	while [ $opcion = a ]
	do
	clear 
	  echo "Tienes estas opciones disponibles:"
          echo ""
          echo "A. Crear usuario."
          echo ""
          echo "B. Borrar usuario."
          echo ""
          echo "C. Salir."
	read -p "¿Qué quieres hacer?: [A/B/C]" hacer
	    case $hacer in
	   [a,A]) read -p "Indicame el nombre del usuario: " usuario
			sudo useradd -m -s /bin/bash $usuario
			sudo passwd $usuario
			echo "Usuario creado: "
			grep $usuario /etc/passwd
			opcion=t ;;
	   [b,B]) read -p "¿Que usuario quieres borrar?" borrar
		   	sudo userdel $borrar ;;
           [c,C]) echo "Vas a salir."
 			opcion=t ;;
	  esac
	 done ;;
  [b,B]) echo "Has elegido la gestión de grupos."
	 opcion=b
	while [ $opcion = b ]
	do
	clear
	echo "Tienes estas opciones disponibles:"
	echo""
	echo "A. Crear grupo."
	echo""
	echo "B. Borrar Grupo."
	echo""
	echo "S. Salir."
	read -p "¿Qué quieres hacer?: [A/B/S]" elecgrupo
	case $elecgrupo in
	[a,A]) read -p "Indicame el nombre del grupo: " grupo
	       sudo groupadd $grupo
               echo "Grupo creado: "
               grep $grupo /etc/group
               opcion=t 
		;;
	[b,B]) read -p "Indicame el grupo que quieres borrar: " delgrupo
		sudo groupdel $delgrupo ;;
	[s,S]) echo "Vas a salir."
		opcion=t ;;

  [c,C]) echo "Vas a salir."
	 
		;;

	esac
	done ;;
 esac
read -p "Pulsa una tecla para continuar." tecla
done


