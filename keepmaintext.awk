#!/usr/bin/awk
#
# Script that processes the tex file with the Science paper. Removes everything else
# (including comments) but the main text.

BEGIN{i=999; j=1000}
/end{sciabstract}/ {i=NR}	# skips abstract
/begin{thebibliography}{1}/ {j=NR}	# skips references and SOM
/begin{comment}/ {ignore=1}	# ignores text inside 'comment' environment
/end{comment}/ {ignore=0}
NR>i && NR<j && $0!~/^%/ && ignore==0