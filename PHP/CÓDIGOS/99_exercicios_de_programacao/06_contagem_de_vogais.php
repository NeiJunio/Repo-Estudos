<?php

function countVowels($texto)
{
    $qtdVogais = 0;
    $vogais = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

    for ($i = 0; $i < strlen($texto); $i++) {
        if (in_array($texto[$i], $vogais)) {
            $qtdVogais++;
        }
    }

    return $qtdVogais;
}

echo countVowels("Palavra");