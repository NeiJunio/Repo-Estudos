<?php

$a = 1;
$b = "1";

if ($a != $b) {
    echo "A é diferente de B <br>"; // não imprime, pois checa os valores, e os valores são iguais
}

if ($a !== $b) {
    echo "A é diferente de B (2)<br>"; // imprime, pois checa os valores e tipos, e os valores são diferentes
}

if (1 !== 2) {
    echo "não idêntico 1 <br>"; //imprime, pois checa os valores, e os valores são diferentes
}

if (1 !== "1") {
    echo "não idêntico 2 <br>"; //imprime, pois checa os valores e os tipos, e os tipos são diferentes
}

if ([] !== "abc") {
    echo "não idêntico 3 <br>"; //imprime, pois checa os valores e os tipos, e os tipos e valores são diferentes
}