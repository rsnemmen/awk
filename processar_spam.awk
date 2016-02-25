# Processa as mensagens de emeio em um arquivo no formato mbox,
# uma a uma, e as repassa pro procmail, que ent�o realiza quaisquer
# filtragens nelas. Neste caso, quero processar cada mensagem com o
# spamassassin e no final mostrar quantas mensagens eram spam do
# total processado.

# C � um contador que nos dir� quantas mensagens foram processadas
BEGIN{C=1}

# Identifica onde cada mensagem de emeio come�a no
# arquivo mbox. O in�cio de cada mensagem tem o formato
# From quem@onde.onde.br Wed Mar 31 15:48:29 2004    (7 campos)
# (ver http://www.qmail.org/man/man5/mbox.html).
NR>1 && NF==7 && /^From/ && $6 ~ /^..:..:..$/ {
close("temp")
system("procmail < temp");
system("rm -f temp");
print "Mensagem " C++ " processada"
}

# temp � um arquivo tempor�rio
{print $0 >> "temp"}

END{
close("temp")
system("procmail < temp");
system("rm -f temp");
print "Mensagem " C " processada"
print C " mensagens processadas";
print "Spams:"
system("awk -f ~/dvd/contar_emeios.awk Spam")
}
