<?php

function compararNumeros($a, $b)
{
    if ($a > $b) {
        return "O primeiro número é maior.";
    } else if ($b > $a) {
        return "O segundo número é maior.";
    } else {
        return "Os números são iguais.";
    }
}

echo compararNumeros(1, 2);