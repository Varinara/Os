#!/bin/bash

if [[ $# -ne 3 ]]
then
	echo "Invalid number of arguments"
	exit
fi

A=$1

for i in "$@"
do
	#echo $i
	if [[ "$A" -lt "$i" ]]
	then
		A="$i"
	fi
done

echo $A

exit
