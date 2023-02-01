#!/bin/bash

# *********** FUNCIONES
function printMenu() {
	echo "***** MENÚ *****"
	echo "1. Buscar ficheros por antigüedad."
	echo "2. Buscar ficheros con permisos 777."
	echo "3. Buscar opciones 1 y 2."
	echo " "
	echo "0. Exit"
}

function errorMenu() {
	echo "ERROR! Opción incorrecta. Debe introducir una de las opciones del menú."
}



# *********** PROGRAMA PRINCIPAL

opcion=-1
while [ $opcion -ne 0 ]
do
	printMenu
	read -p "Introduzca una opción: " opcion

	case $opcion in
		1)
			read -p "Días: " dias
			find /home -atime $dias > old_files.txt
		;;
		2)
			find /home/ -perm 777 > weak_files.txt
		;;
		0)
			echo "Bye, bye!"
		;;
		*)
			errorMenu
		;;
	esac


done


exit 0
