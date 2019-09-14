#!/bin/bash 

input=$1 
# special variable accepts value from command line 

cut -f1,3,4 $input | sort -nk3 | tail -n1