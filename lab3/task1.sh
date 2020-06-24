#!/bin/bash


ps -u artyom o pid,command | tail -n +2 | awk '{printf $1 ":"};{for (i=2; i<=NF; i++) {printf X$i " "}}; {printf "\n"}' > for_task1



