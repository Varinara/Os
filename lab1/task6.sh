#!/bin/bash

if [[ "$PWD" == "$HOME" ]]
then
	echo "$HOME"
	exit 0
else
	#echo "$PWD"
	#echo "$HOME"
	echo "ERROR. THIS IS NOT A HOME DIRECTORY"
	exit 1
fi

exit
