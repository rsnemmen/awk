#!/bin/awk
# Programinha que converte o espectro do formato logar�mico
# pro formato nu (Hz) x Lnu (erg/s/Hz)

{$1=10^$1;
$2=10^$2/$1;
print}

# OU.... --------------------------------------------------

# Formato de sa�a:
# lambda [�gstrom]	Flambda [erg/s/cm**2/Angstrom]

#BEGIN{c=3.0e18; pi=3.141592; dist=4.4742e25}
#{Lnu=10^$2/10^$1;
#Fnu=Lnu/(4*pi*dist^2);
#$1=c/10^$1;
#$2=c/($1^2)*Fnu;
#print}
