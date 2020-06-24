#!/bin/bash

ps -A -o pid,cmd | tail -n +2 | grep -E "\s+/sbin/" | awk '{print $1}' > for_task3

#ps -A -o pid,cmd | tail -n +2 | grep "/sbin/" | awk '{print $1}' > for_task3
