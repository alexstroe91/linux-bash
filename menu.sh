#!/bin/bash

if ( whiptail --title "Entrar a menu." --yesno "¿Quieres entrar al menú?" 8 78 );then
seguir=1
while [ $seguir -ne 0 ]
do
	menu=0
	menu=$(whiptail --title "Menu multifunción" --menu "Elige una opción:" 25 78 16 \
	"1" "Gestion de usuarios." \
	"2" "Calculadora." \
	"3" "Minijuego." \
	"4" "Salir" 3>&1 1>&2 2>&3)

	salida=$?
	
	if [ $salida = 0 ];then
	

		#menu de gestion de usuarios
		if [ $menu -eq 1 ];then
			menu2=$(whiptail --title "Gestión de usuarios" --menu "Elige una opción: " 25 78 16 \
			"1" "Añadir usuario" \
			"2" "Borrar usuario" \
			"3" "Verificar si el usuario existe" \
			"4" "Cambiar la contraseña de un usuario" \
			"5" "Lista de todos los ultimos 10 usuarios" \
			"6" "Volver atrás" 3>&1 1>&2 2>&3)

			salidamenu2=$?

			if [ $menu2 -eq 1 ];then
				usuario=$(whiptail --title "USUARIO" --inputbox "Introduce el usuario que quieres crear:" 10 60 "Introduce aqui el usuario" 3>&1 1>&2 2>&3)
				sudo useradd $usuario
				whiptail --title "USUARIO" --msgbox "El usuario se ha creado." 8 78 
			
			elif [ $menu2 -eq 2 ];then
				usuario=$(whiptail --title "USUARIO" --inputbox "Introduce el usuario que quieres borrar:" 10 60 "Introduce aqui el usuario" 3>&1 1>&2 2>&3)
				sudo userdel $usuario
				whiptail --title "USUARIO" --msgbox "El usuario se ha borrado." 8 78 
			
			elif [ $menu2 -eq 3 ];then
				usuario=$(whiptail --title "USUARIO" --inputbox "Introduce el usuario que quieres verificar:" 10 60 "Introduce aqui el usuario" 3>&1 1>&2 2>&3)
				whiptail --title "USUARIO" --msgbox "`cat /etc/passwd | grep $usuario`." 8 78
			
			elif [ $menu2 -eq 4 ];then
				usuario=$(whiptail --title "USUARIO" --inputbox "Introduce el usuario al que quieres cambiar la contraseña:" 10 60 "Introduce aqui el usuario" 3>&1 1>&2 2>&3)
				sudo passwd $usuario
			
			elif [ $menu2 -eq 5 ];then
				whiptail --title "USUARIO" --msgbox "`cat /etc/passwd | tail -n10`." 15 90
 
			fi
		fi
		

		#menu de la calculadora
		if [ $menu -eq 2 ];then
			menu3=$(whiptail --title "Calculadora" --menu "Elige una opción:" 25 78 16 \
			"1" "Sumar" \
			"2" "Restar" \
			"3" "Multiplicar" \
			"4" "Dividir" \
			"5" "Volver atrás" 3>&1 1>&2 2>&3)
			
			salidamenu3=$?

			if [ $menu3 -eq 1 ];then
				num1=$(whiptail --title "NÚMERO 1 " --inputbox "Introduce el primer número:" 10 60 3>&1 1>&2 2>&3)
				num2=$(whiptail --title "NÚMERO 2 " --inputbox "Introduce el segundo número:" 10 60  3>&1 1>&2 2>&3)
				resul=0
				resul=$(expr $num1 \+ $num2)
				whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60 3>&1 1>&2 2>&3
				seguir1=1
				while [ $seguir1 -ne 0 ]
				do
					if (whiptail --title "OPERAR" --yesno "¿Quires operar con más números?" 10 60);then
						seguir1=1
						num3=$(whiptail --title "NÚMERO " --inputbox "Introduce el número:" 10 60 3>&1 1>&2 2>&3)
						resul=$(expr $resul \+ $num3)
						whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60
					else
						whiptail --title "CALCULADORA" --msgbox "Has elegido no sumar más números. Pulsa INTRO para salir."
						seguir1=0
					fi
				done
			fi

			if [ $menu3 -eq 2 ];then
				num1=$(whiptail --title "NÚMERO 1 " --inputbox "Introduce el primer número:" 10 60 3>&1 1>&2 2>&3)
				num2=$(whiptail --title "NÚMERO 2 " --inputbox "Introduce el segundo número:" 10 60  3>&1 1>&2 2>&3)
				resul=0
				resul=$(expr $num1 \- $num2)
				whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60 3>&1 1>&2 2>&3
				seguir1=1
				while [ $seguir1 -ne 0 ]
				do
					if (whiptail --title "OPERAR" --yesno "¿Quires operar con más números?" 10 60);then
						seguir1=1
						num3=$(whiptail --title "NÚMERO " --inputbox "Introduce el número:" 10 60 3>&1 1>&2 2>&3)
						resul=$(expr $resul \- $num3)
						whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60
					else
						whiptail --title "CALCULADORA" --msgbox "Has elegido no restar más números. Pulsa INTRO para salir."
						seguir1=0
					fi
				done
			fi



			if [ $menu3 -eq 3 ];then
				num1=$(whiptail --title "NÚMERO 1 " --inputbox "Introduce el primer número:" 10 60 3>&1 1>&2 2>&3)
				num2=$(whiptail --title "NÚMERO 2 " --inputbox "Introduce el segundo número:" 10 60  3>&1 1>&2 2>&3)
				resul=0
				resul=$(expr $num1 \* $num2)
				whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60 3>&1 1>&2 2>&3
				seguir1=1
				while [ $seguir1 -ne 0 ]
				do
					if (whiptail --title "OPERAR" --yesno "¿Quires operar con más números?" 10 60);then
						seguir1=1
						num3=$(whiptail --title "NÚMERO " --inputbox "Introduce el número:" 10 60 3>&1 1>&2 2>&3)
						resul=$(expr $resul \* $num3)
						whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60
					else
						whiptail --title "CALCULADORA" --msgbox "Has elegido no multiplicar más números. Pulsa INTRO para salir."
						seguir1=0
					fi
				done
			fi


			if [ $menu3 -eq 4 ];then
				num1=$(whiptail --title "NÚMERO 1 " --inputbox "Introduce el primer número:" 10 60 3>&1 1>&2 2>&3)
				num2=$(whiptail --title "NÚMERO 2 " --inputbox "Introduce el segundo número:" 10 60  3>&1 1>&2 2>&3)
				resul=0
				resul=$(expr $num1 \/ $num2)
				whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60 3>&1 1>&2 2>&3
				seguir1=1
				while [ $seguir1 -ne 0 ]
				do
					if (whiptail --title "OPERAR" --yesno "¿Quires operar con más números?" 10 60);then
						seguir1=1
						num3=$(whiptail --title "NÚMERO " --inputbox "Introduce el número:" 10 60 3>&1 1>&2 2>&3)
						resul=$(expr $resul \/ $num3)
						whiptail --title "RESULTADO" --msgbox "El resultado es $resul" 10 60
					else
						whiptail --title "CALCULADORA" --msgbox "Has elegido no dividir más números. Pulsa INTRO para salir."
						seguir1=0
					fi
				done
			fi
		fi 


		#menu de minijuego
		if [ $menu -eq 3 ];then
			menu4=$(whiptail --title "Minijuegos" --menu "Elije que juego quieres: " 25 78 16\
			"1" "Adivinar el numero"\
			"2" "Volver atrás" 3>&1 1>&2 2>&3)

			salidamenu4=$?

			aleatorio=$(($RANDOM%11))

			if [ $menu4 -eq 1 ];then
				intento=1
				whiptail --title "" --msgbox "$aleatorio" 10 60
				while [ $menu -ne 0 ] && [ $intento -le 5 ]
				do
					adivinar=$(whiptail --title "ADIVINA EL NÚMERO" --inputbox "Introduce un número" 10 60 3>&1 1>&2 2>&3)
					if [ $adivinar -eq $aleatorio ];then
							whiptail --title "¡HAS GANADO!" --msgbox "¡HAS ACERTADO EL NÚMERO!" 10 60
							menu=0
						else
							if [ $adivinar -lt $aleatorio ];then
								whiptail --title "Has fallado." --msgbox "Has fallado inténtalo de nuevo. Tienes $intento intentos. El número introducido es menor al que hay que adivinar." 10 60
								intento=$(expr $intento \+ 1)
							elif [ $adivinar -gt $aleatorio ];then
								whiptail --title "Has fallado." --msgbox "Has fallado inténtalo de nuevo. Tienes $intento intentos. El número introducido es mayor al que hay que adivinar." 10 60
								intento=$(expr $intento \+ 1)
							fi
					fi
					if [ $intento -eq 6 ];then
						whiptail --title "HAS PERIDO" --msgbox "Has llegado a los 5 intentos. Saliendo." 10 60
					fi
				done
				
			fi
		fi

		#menu de salir
		if [ $menu -eq 4 ];then 
			whiptail --title "Menú" --msgbox "Vas a salir. Pulsa INTRO para continuar." 8 78
			exit
		fi
	
	fi
	done
	else
	
	whiptail --title "Menú" --msgbox "Vas a salir. Pulsa INTRO para continuar." 8 78
	exit
fi