#!/bin/bash

if [[ $# -ne 2 ]]
then
	echo "Invalid number of arguments"
	exit
fi

if [[ $1 != $2 ]]
then
	echo "Strings are not eq"
else
	echo "Strings are eq"
fi

exit
