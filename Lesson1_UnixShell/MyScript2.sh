#!/bin/bash

#this cmd used to output the highest life expectancy from Mexico.txt
#usage ./MyScript3.sh input > output
#cut -f1,3,4 Data/ByCountry/Mexico.txt | sort -nk3 | tail -n1 > HighestLE_Mexico.txt

#change hard-wired file name
input=$1 # special variable accepts value from command line 

cut -f1,3,4 $input | sort -nk3 | tail -n1