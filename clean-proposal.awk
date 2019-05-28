#!/usr/bin/env awk -f
#
# Cleans NVIDIA proposal before submission, removing all comments
#
# Examples of things that will be ignored if they are at the 
# beginning of the line:
# 
# • // what are BHs. Where they are. 
# • <**problem description**>
# • ``` begin python block comment 
# • % this is a LaTeX comment
#
!/^\/\// && !/^</ && !/^%/ && !/^`/