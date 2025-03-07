<?php

function sumEvenNumbers($numero)
{

    $soma = 0;

    for ($i = 1; $i <= $numero; $i++) {
        if ($i % 2 == 0) {
            $soma = $soma + $i;
        }
    }

    return $soma;
}

$somaTotal = sumEvenNumbers(10);

echo $somaTotal;