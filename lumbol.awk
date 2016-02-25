#!/bin/awk
#
# This program calculates the bolometric luminosity from a
# data file that contains columns [ log(nu) - log(nu Lnu) ],
# interpolating the points with a piece-wise power-law of
# the form y=a*x+b, where y=log(nu Lnu) and x=log(nu).
# Useful when you have to handle this kind of data.

BEGIN{Lbol=0;}
NR==1{x1=$1; y1=$2;}
# Conditions below explained:
# $1!=x1 : avoid problems when the x1 values of two consecutive lines 
# are equal (happens when joining two datafiles)
# $2>=35 : numerical threshold of awk, below this value we get NAN or INF
# $2!=x2 : avoid problems when the x2 values of two consecutive lines 
# are equal, because then Lbol=inf
NR>1 && $1!=x1 && $2>=35 && $2!=y1 {
x2=$1; y2=$2;
a=(y1-y2)/(x1-x2);
b=(x1*y2-y1*x2)/(x1-x2);
Lbol=10**b/a*(10**(x2*a)-10**(x1*a)) + Lbol;
x1=$1; y1=$2;
}
END{print "L_bol = " Lbol;}