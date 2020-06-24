#!/bin/bash

while [[ $cur != "q" ]] 
do
	ans="$ans""$cur"
	read cur
done

echo $ans

exit
