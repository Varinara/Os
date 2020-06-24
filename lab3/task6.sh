#!/bin/bash

previous_ppid=-1
sum=0
cnt=0

while read line
	do
	ppid=$(echo $line | cut -d ":" -f 2 | grep -E -s -o "[[:digit:]]+")
	sleepavg=$(echo $line | cut -d ":" -f 3 | grep -E -s -o "[[:digit:]]+")
	
	if (( previous_ppid != -1 && ppid != previous_ppid ))
	then
		echo Average_Sleeping_Children_of_ParentID=$previous_ppid is $(echo "scale=2; $sum / $cnt" | bc -l)
		sum=0
		cnt=0
	fi
	echo $line
	let sum=$(echo "scale=2; $sum + $sleepavg" | bc -l)
	previous_ppid=$ppid
	((cnt++))
done < for_ans5 > for_ans6

echo Average_Sleeping_Children_of_ParentID=$previous_ppid is $(echo "scale=2; $sum / $cnt" | bc -l) >> for_ans6
