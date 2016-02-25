#!/bin/gawk -f
# Script que baixa as p�ginas do Le Monde Diplomatique, converte-as
# pro formato PS num formato conveniente para impress�o.

BEGIN{
# Entrada das informa��es essenciais
indice="http://www.diplo.com.br/aberto/0410/index.htm" # �ndice
art=995 # Contador do primeiro artigo
num=8 # N�mero de artigos
mes="Outubro" # M�s
saida01=mes"-resumo.ps"
saida02=mes".ps" # Arquivo de sa�da

# Loop que gera o comando de convers�o

# Resumo do conte�do
comando01="htmldoc --webpage --no-toc --no-title --duplex --nup 1 -t ps -f " saida01 " " indice

# Jornal
comando02="htmldoc --toctitle " mes " --no-title --duplex --nup 1 -t ps -f "  saida02 " " indice " "
i=art
fim=num + art # contador do artigo final
fim=fim - 1
while (i <= fim) {
    comando02=comando02 "http://www.diplo.com.br/aberto/materia.php?id=" i " "
    i++
}

#print comando

system(comando01)
system(comando02)
}
