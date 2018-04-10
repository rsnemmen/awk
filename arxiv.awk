#!/usr/bin/awk -f
#
# Processes a LaTeX/TeX file for a "clean" submission to arXiv.
# Removes all comments.
#
# How to use it:
#
# $ arxiv.awk origin.tex > destination.tex

$0 !~ /^%/ 