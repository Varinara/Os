#!/bin/bash

ps -A -o pid | tail -n +2 | awk '{getline str <("/proc/"$1"/statm"); split(str, x); print $1,":",x[2]-x[3]}' | sort -r -n -k3 > for_ans4

