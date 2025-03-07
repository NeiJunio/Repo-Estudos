<?php

function sumDigits($numero)
{
    return array_sum(str_split(abs($numero)));
}

// Exemplos de uso
echo sumDigits(123);  // Saída: 6 (1 + 2 + 3)

?>