#!/bin/bash

at -f ./task1.sh 2> /dev/null now+2minutes
tail -n 0 -f ~/report.txt

