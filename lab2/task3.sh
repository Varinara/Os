#!/bin/bash

X='\n'
Y=','

mail="[[:alnum:]_]+@[[:alnum:]_]+\.[[:alpha:]]+"
grep -E -h -o $mail /home/artyom/forlab2/* | uniq -u | tr -s $X $Y | sed "s/,/, /g" > emails.lst

