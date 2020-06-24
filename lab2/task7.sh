#!/bin/bash

man bash | tr "[[:upper:]]" "[[:lower:]]" | grep -o "[[:alpha:]]\{4,\}" | sort | uniq -c | sort -r -n| head -3

