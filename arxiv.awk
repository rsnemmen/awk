#!/usr/bin/awk
#
# Processes a LaTeX/TeX file for a "clean" submission to arXiv.
# Removes all comments.

$0 !~ /^%/ 