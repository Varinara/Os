#!/bin/bash

while [[ 1 -ne 2 ]]
do
	echo "
	Menu
1 - open the Nano
2 - open the Vi
3 - open the links
4 - exit the Menu

"
	read num
	case $num in
		1) nano ;;
		2) vi ;;
		3) links ;;
		4) exit ;;
		*) echo "Unknown argument" ;;
			
	esac
done

exit
