#!/usr/bin/awk
#
# File name input format: 
# 	lambda (A) | Flambda (erg/s/cm**2/A)
#
# Output:
# 	log(nu [Hz]) | log(nu Lnu [erg/s])

BEGIN{
c=3.0e18; pi=3.141592; dist=4.4742e25}
$2>0. {Fnu=$1^2/c*$2;
Lnu=4*pi*dist^2*Fnu;
nu=c/$1;
$2=log(Lnu*nu)/log(10.); 
$1=log(nu)/log(10.);
print
}
