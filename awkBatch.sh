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

# check if there were command-line arguments
if [ $# -eq 0 ]; then
    echo "Usage: "
    echo "  awkBatch.sh <awk pattern> <file extension to apply, without .> "
    exit 1
fi

# colors and boldface, cf. https://stackoverflow.com/a/20983251/793218
fmt=`tput bold`
reset=`tput sgr0`

for X in `ls *.$2`
    do
    	echo "${fmt}$X ${reset}"
    	#awk $1 $X # only prints matching lines
    	awk "$1 {gsub(/^[ \t]+/,\"\", \$0); print NR, \$0}" $X # trim leading spaces from lines
    	echo
    done

