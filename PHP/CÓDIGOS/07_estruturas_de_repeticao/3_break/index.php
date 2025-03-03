<?php

$x = 0;

while ($x < 10) {
    echo $x . "<br>";

    if ($x === 5) {
        echo "Terminando o Loop <br>";
        break; // Sai do loop
    }

    $x++;
}

echo "Saindo do loop";
/*
    imprime: 
    0
    1
    2
    3
    4
    5
    Terminando o Loop
    Saindo do loop
*/