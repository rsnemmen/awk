#!/bin/sh
#
# Lists all C source files and the functions defined inside them.
#
# ./findFunctions.sh 

# colors and boldface, cf. https://stackoverflow.com/a/20983251/793218
fmt=`tput bold`
reset=`tput sgr0`

# finds dir where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for X in `ls *.c`
    do
    	echo "${fmt}$X ${reset}"
    	awk -f $DIR/findFunctions.awk $X
    	echo
    done