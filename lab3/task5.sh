#!/bin/bash

outfile="for_ans5"

for pid in $(ps -a -x -o pid)
do
	file1="/proc/"$pid"/status"
	file2="/proc/"$pid"/sched"
	
	ppid=$(grep -E -s -h "PPid" $file1 | grep -E -o "[[:digit:]]+")
	sleepavg=$(grep -E -s -h "avg_atom" $file2 | grep -E -o "[[:digit:]]+")

	if [[ -z $sleepavg ]]
	then 
		sleepavg=0
	fi

	if [[ -n $ppid ]]
	then 
		echo "ProcessID=$pid : Parent_ProcessID=$ppid : Average_Sleeping_Time=$sleepavg"
	fi
done | sort -n -t "=" -k3 > for_ans5
