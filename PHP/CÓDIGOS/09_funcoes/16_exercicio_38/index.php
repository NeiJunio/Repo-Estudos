<?php

$lista = ["arroz", "feijão", "sal", "vinagre"];

function listaSupermercado($arr)
{
    $str = "Você precisa comprar esses itens: ";

    for ($i = 0; $i < count($arr); $i++) {

        if ($i + 1 == count($arr)) {
            $str .= "e $arr[$i].";
        } else {
            $str .= "$arr[$i], ";
        }
    }

    return $str;
}

echo listaSupermercado($lista); // Imprime: arroz, feijão, sal, vinagre