<?php

$a = 10;
$b = 2;

function testeEscopo()
{
    $a = 5;
    global $b;
    $b++;

    echo "-------------<br>";
    echo "Escopo Local de A: $a <br>";

    echo "Escopo Global de B: $b <br>";

}

echo "Escopo Global de A: $a <br>";
echo "Escopo Global de B: $b <br>";

testeEscopo();

echo "Escopo Global de B 2: $b <br>";