#!/usr/bin/awk -f
#
# Processes a text file and appends to the beginning of each line a ">"
# symbol. This is very useful for writing replies to referee's reports.
#
# How to use it:
#
# $ indent.awk origin.txt > destination.txt

{print "\>" $0}