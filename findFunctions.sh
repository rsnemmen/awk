#!/bin/sh
#
# Lists all C source files and the functions defined inside them.
#

# finds dir where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for X in `ls *.c`
    do
    	echo $X
    	awk -f $DIR/findFunctions.awk $X
    	echo
    done