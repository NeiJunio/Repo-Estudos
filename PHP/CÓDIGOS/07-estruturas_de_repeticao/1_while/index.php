<?php

$x = 0; // Definição do contador

while ($x < 10) {
    echo $x . "<br>";

    $x = $x + 1;
    // $x++ é equivalente a $x = $x + 1;
}

/*
    $x começa com 0

    Enquanto ($x < 10){
        imprima $x e pule uma linha

        aumente 1 no valor de x
    }

    após isso, $x passará a valer 1, então entra na condição  de novo, e de novo, até $x valer 9, pois quando $x valer 10, a condição retornará false
*/


$y = 0; // Definição do contador

while ($y < 10) {
    echo $y . "<br>";

    $y += 2;

    // $y += é equivalente a $y = $y + 2;
}



$a = 10;

while ($a > 0) {
    if ($a % 2 != 0) {
        echo $a . "<br>"; // saída: 9, 7, 5, 3, 1
    }

    $a--;
}