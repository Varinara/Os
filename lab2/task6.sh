#!/bin/bash

grep -E -r -h ".*" /var/log/*.log | wc -l
