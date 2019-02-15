#!/bin/bash
vida_pikachu=100
while [ $vida_pikachu -gt "0" ]
do
clear

	echo "***************************************************************************"
	echo "***************************************************************************"
	echo "***************************************************************************"
	echo "******                                                               ******"
	echo "******          Tienes un Pikachu, vas a combatir con él             ******"
	echo "******                                                               ******"
	echo "******             La vida de Pikachu es de 100 HP                   ******"
	echo "******                                                               ******"
	echo "******     Pikachu tiene 2 ataques :  1.-IMPACTRUENO 2.-LÁTIGO       ******"
	echo "******                                                               ******"
	echo "***************************************************************************"
	echo "********************************************************By: @alexstroe91***"
	echo "***************************************************************************"

	dano_impactrueno=12
	dano_latigo=8

	echo ""
	read -p "Pulsa una telca para continuar" tcla
	echo ""
	echo "************************************************************************"
	echo "******************************* COMBATE ********************************"
	echo "************************************************************************"
	echo "*****                                                              *****"
	echo "*****                ¿Contra quién quieres pelear?                 *****"
	echo "*****                                                              *****"
	echo "*****                       1. BULBASAUR.                          *****"
	echo "*****                                                              *****"
	echo "*****                       2. SQUIRTLE.                           *****"
	echo "*****                                                              *****"
	echo "*****                       3. CHARMANDER.                         *****"
	echo "*****                                                              *****"
	echo "*****                                                              *****"
	echo "************************************************************************"
	echo "************************************************************************"
	echo ""
	read -p " SELECCIONA UN OPONENTE [1/2/3] : " combate
	echo ""

	case $combate in
		1) 
			vida_bulbasaur=120
			ataque_bulbasaur=5
			echo ""
			echo "Vas a pelear contra Bulbasaur."
			echo ""
			read -p "Pulsa una tecla para empezar el combate." tcla
			echo ""
			while [ $vida_pikachu -gt "0" ]
			do
			echo ""
			read -p "¿Qué ataque quieres hacer? : 1.- IMPACTRUENO 2.- LÁTIGO " ataque
			if [ $ataque = 1 ];then
				vida_bulbasaur=$(expr $vida_bulbasaur \- $dano_impactrueno)
				echo ""
				echo "Pikachu ha utilizado Impactrueno. La vida de Bulbasaur ha bajado. Su vida ahora es de $vida_bulbasaur"
				echo ""
				vida_pikachu=$(expr	$vida_pikachu \- $ataque_bulbasaur)
				echo "Bulbasaur ha atacado a Pikachu, su vida ha bajado $ataque_bulbasaur. La vida de pikachu ahora es de $vida_pikachu."
				echo ""
				read -p "Pulsa una tecla para continuar." tcla
			elif [ $ataque = 2 ];then
				vida_bulbasaur=$(expr $vida_bulbasaur \- $dano_latigo)
				echo ""
				echo "Pikachu ha utilizado Látigo. La vida de Bulbasaur ha bajado. Su vida ahora es de $vida_bulbasaur"
				echo ""
				vida_pikachu=$(expr	$vida_pikachu \- $ataque_bulbasaur)
				echo "Bulbasaur ha atacado a Pikachu, su vida ha bajado $ataque_bulbasaur. La vida de pikachu ahora es de $vida_pikachu."
				echo ""
				read -p "Pulsa una tecla para continuar." tcla
			fi





			if [ $vida_pikachu -le "0" ];then
				echo ""
				echo "Has perdido. Tu Pikachu tiene que recuperarse."
				echo ""
				echo "               |       |                  "
				echo "               |       |                  "
				echo ""
				echo "             _____________                  "
				echo "            /             \                 "
				echo "           /               \                "
				echo ""
				read -p "Pulsa una tecla para continuar." tcla
				exit
			elif [ $vida_bulbasaur -le "0" ];then
				echo "***********************************************************"
 				echo "******  ¡Felicidades, has ganado el enfrentamiento!  ******"
 				echo "***********************************************************"
				exit
			fi
			done ;;




		2) 
			vida_squirtle=120
			ataque_squirtle=7
			echo ""
			echo "Vas a pelear contra Squirtle."
			echo ""
			read -p "Pulsa una tecla para empezar el combate." tcla
			echo ""
			while [ $vida_pikachu -gt "0" ]
			do
			read -p "¿Qué ataque quieres hacer? : 1.- IMPACTRUENO 2.- LÁTIGO " ataque
			if [ $ataque = 1 ];then
				vida_squirtle=$(expr $vida_squirtle \- $dano_impactrueno)
				echo "Pikachu ha utilizado Impactrueno. La vida de Squirtle ha bajado. Su vida ahora es de $vida_squirtle"
				echo ""
				vida_pikachu=$(expr	$vida_pikachu \- $ataque_squirtle)
				echo "Squirtle ha atacado a Pikachu, su vida ha bajado $ataque_squirtle. La vida de pikachu ahora es de $vida_pikachu."
				read -p "Pulsa una tecla para continuar." tcla
			elif [ $ataque = 2 ];then
				vida_squirtle=$(expr $vida_squirtle \- $dano_latigo)
				echo "Pikachu ha utilizado Látigo. La vida de Squirtle ha bajado. Su vida ahora es de $vida_squirtle"
				echo ""
				vida_pikachu=$(expr	$vida_pikachu \- $ataque_squirtle)
				echo "Squirtle ha atacado a Pikachu, su vida ha bajado $ataque_squirtle. La vida de pikachu ahora es de $vida_pikachu."
				read -p "Pulsa una tecla para continuar." tcla
			fi




			if [ $vida_pikachu -le "0" ];then
				echo ""
				echo "Has perdido. Tu Pikachu tiene que recuperarse."
				echo ""
				echo "               |       |                  "
				echo "               |       |                  "
				echo ""
				echo "             _____________                  "
				echo "            /             \                 "
				echo "           /               \                "
				echo ""
				read -p "Pulsa una tecla para continuar." tcla
				exit
			elif [ $vida_squirtle -le "0" ];then
				echo "***********************************************************"
 				echo "******  ¡Felicidades, has ganado el enfrentamiento!  ******"
 				echo "***********************************************************"
				exit
			fi
			done ;;





		3) 
			vida_charmander=120
			ataque_charmander=10
			echo ""
			echo "Vas a pelear contra Charmander."
			echo ""
			read -p "Pulsa una tecla para empezar el combate." tcla
			echo ""
			while [ $vida_pikachu -gt "0" ]
			do
			read -p "¿Qué ataque quieres hacer? : 1.- IMPACTRUENO 2.- LÁTIGO " ataque
			if [ $ataque = 1 ];then
				vida_charmander=$(expr $vida_charmander \- $dano_impactrueno)
				echo "Pikachu ha utilizado Impactrueno. La vida de Charmander ha bajado. Su vida ahora es de $vida_charmander"
				echo ""
				vida_pikachu=$(expr	$vida_pikachu \- $ataque_charmander)
				echo "Charmander ha atacado a Pikachu, su vida ha bajado $ataque_charmander. La vida de pikachu ahora es de $vida_pikachu."
				read -p "Pulsa una tecla para continuar." tcla
			elif [ $ataque = 2 ];then
				vida_charmander=$(expr $vida_charmander \- $dano_latigo)
				echo "Pikachu ha utilizado Látigo. La vida de Charmander ha bajado. Su vida ahora es de $vida_charmander"
				echo ""
				vida_pikachu=$(expr	$vida_pikachu \- $ataque_charmander)
				echo "Charmander ha atacado a Pikachu, su vida ha bajado $ataque_charmander. La vida de pikachu ahora es de $vida_pikachu."
				read -p "Pulsa una tecla para continuar." tcla
			fi




			if [ $vida_pikachu -le "0" ];then
				echo ""
				echo "Has perdido. Tu Pikachu tiene que recuperarse."
				echo ""
				echo "               |       |                  "
				echo "               |       |                  "
				echo ""
				echo "             _____________                  "
				echo "            /             \                 "
				echo "           /               \                "
				echo ""
				read -p "Pulsa una tecla para continuar." tcla
				exit
			elif [ $vida_bulbasaur -le "0" ];then
				echo "***********************************************************"
 				echo "******  ¡Felicidades, has ganado el enfrentamiento!  ******"
 				echo "***********************************************************"
				exit
			fi
			done ;;

	esac
done
