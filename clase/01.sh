#!/bin/bash

read -p "Introduce tu nombre: " nombre

if [[ -z $nombre ]]	# si el nombre está vacío.
then
	echo "ERROR! Debe introducir un nombre."
	exit 1
fi

read -p "Introduce tu edad: " edad

echo "Hola, $nombre! Tienes $edad años y estás usando $SHELL como shell."

exit 0

