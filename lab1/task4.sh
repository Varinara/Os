#!/bin/bash

mod=1

while [[ $mod -ne 0 ]] 
do
	read cur
	let mod=$cur%2
	let ans=$ans+1
done

echo $ans
exit
