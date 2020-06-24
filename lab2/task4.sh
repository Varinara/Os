#!/bin/bash

grep -E -r -l "#!\s*/" /bin/ | xargs -n 1 head -n 1 | sed "s/ //g" | sort | uniq -c | sort -rn | head -1



