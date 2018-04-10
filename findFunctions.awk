#!/usr/bin/env awk
#
# Displays all functions defined in the specified C source code
#
$0~/^double/ && $0!~/;$/
$0~/^static/ && $0!~/;$/
$0~/^int/ && $0!~/;$/
$0~/^void/ && $0!~/;$/
$0~/^float/ && $0!~/;$/
