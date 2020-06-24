#!/bin/bash

I="(II)"
W="(WW)"

grep $W /home/artyom/.local/share/xorg/Xorg.0.log | sed "s/$W/Warning:/" > full.log
grep $I /home/artyom/.local/share/xorg/Xorg.0.log | sed "s/$I/Information:/" >> full.log

