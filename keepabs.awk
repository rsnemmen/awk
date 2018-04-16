#!/usr/bin/awk
#
# Script that processes the TeX file with the Science paper. 
# Removes everything but the abstract.

BEGIN{i=999; j=1000}
/begin{sciabstract}/ {i=NR}
/end{sciabstract}/ {j=NR}
NR>i && NR<j && $0!~/^%/