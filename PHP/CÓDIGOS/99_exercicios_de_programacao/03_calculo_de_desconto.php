<?php

function calcularDesconto($valor, $categoria)
{
    if ($categoria == "eletrônicos") {
        return $valor * 0.9;
    } else if ($categoria == "vestuário") {
        return $valor * 0.8;
    } else if ($categoria == "alimentos") {
        return $valor * 0.95;
    } else {
        return $valor;
    }
}

calcularDesconto(100, "eletrônicos");