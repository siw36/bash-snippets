#!/bin/bash

function NUMERIC_MENU () {
	# $1 = command
	
	OUTPUT=( `$1` )
	DATA=${#OUTPUT[@]}
	i=0

	for ELEMENT in "${OUTPUT[@]}"
	do
		echo "$i) ${ELEMENT}"
		((i++))
	done

	read -r -p "Choose one entry from the following (num): " SELECTION

	SELECTION=${OUTPUT[$SELECTION]}
}

# Call this function with a command that produces the output for your menu
# The chosen menu entry will be store in $SELECTION

NUMERIC_MENU "ls .."
echo $SELECTION
