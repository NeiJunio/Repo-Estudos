<?php

$a = 3;
$b = 4;

if ($a != $b) {
    echo "Testando diferença <br>";
}

if ($a != 3) {
    echo "Testando diferença 2<br>";
    // não imprime, pois A não é diferente de 3
}

if (false != "teste") {
    echo "Testando diferença  3<br>";
}

if (3 != "3") {
    echo "Testando diferença  4<br>"; // não imprime, pois checa apenas os valores, e nesse caso, os valores são iguais
}

if (3 != "4") {
    echo "Testando diferença  5<br>";
}