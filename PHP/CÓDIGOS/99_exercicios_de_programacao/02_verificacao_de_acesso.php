<?php

function verificarAcesso($idade, $autorizacao)
{
    if ($idade >= 18 && $autorizacao == true) {
        return "Acesso autorizado";
    } else if ($idade >= 18 && $autorizacao == false) {
        return "Acesso negado. Autorização necessária";
    } else {
        return "Acesso negado. Idade mínima requerida: 18 anos";
    }
}

verificarAcesso(21, true);