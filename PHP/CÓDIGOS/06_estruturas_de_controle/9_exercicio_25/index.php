<?php

$a = 12;
$b = 89;
$c = "string";

if (is_int($a) || is_float($a)) {
    $multi = $a * 2;

    if ($multi > 100) {
        echo "O resultado da multiplicação é maior que 100 <br>";
    } else {
        echo "O resultado da multiplicação é menor ou igual a 100 <br>";
    } 
} else {
    echo "Não é um número <br>";
}


if (is_int($b) || is_float($b)) {
    $multi = $b * 2;

    if ($multi > 100) {
        echo "O resultado da multiplicação é maior que 100 <br>";
    } else {
        echo "O resultado da multiplicação é menor ou igual a 100 <br>";
    }
} else {
    echo "Não é um número <br>";
}


if (is_int($c) | is_float($c)) {
    $multi = $c * 2;

    if ($multi > 100) {
        echo "O resultado da multiplicação é maior que 100 <br>";
    } else {
        echo "O resultado da multiplicação é menor ou igual a 100 <br>";
    }
} else {
    echo "Não é um número <br>";
}