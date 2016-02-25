#!/bin/awk
# Programinha que converte o espectro do formato logar�mico
# pro formato nu (Hz) x Lnu (erg/s/Hz)

{$1=10^$1;
$2=10^$2/$1;
print}
