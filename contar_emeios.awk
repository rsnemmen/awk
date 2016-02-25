# Conta quantos emeios existem num arquivo mbox.

BEGIN{C=1}
NF==7 && /^From/ && $6 ~ /^..:..:..$/ {C++}
END{print C " mensagens"}
