#!/usr/bin/gawk
#
# Converts an ASCII table to a LaTeX table.
#
# Change the number of fields below as appropriate.

BEGIN{OFS=" & "}
{print $1,$2,$3,$4,$5,$6 " \\" "\\"}