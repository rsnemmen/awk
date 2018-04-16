#!/bin/sh
#
# Applies the given awk pattern matching to all specified files 
# in current dir.
#
# ./awkBatch.sh <awk pattern> <extension>
#
# Example:
#     ./awkBatch.sh /void/ c
# lists all instances of lines with "void" in *.c files in current dir.

# colors and boldface, cf. https://stackoverflow.com/a/20983251/793218
fmt=`tput bold`
reset=`tput sgr0`

for X in `ls *.$2`
    do
    	echo "${fmt}$X ${reset}"
    	awk $1 $X
    	echo
    done