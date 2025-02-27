<?php

$x = 4;
$limite = 30;

while ($x < $limite) {
    echo $x . "<br>";

    if ($x === 26) {
        echo "parando no número 26 <br>";
        break; // Para o loop
    }

    $x += 2; // Incremento de 2 em 2
}

echo "Fim do loop";