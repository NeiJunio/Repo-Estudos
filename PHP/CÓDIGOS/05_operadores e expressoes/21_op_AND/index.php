<?php

if (5 > 10 && 10 > 5) { // false e true
    echo "entrou no if 1 <br>"; // não imprime, pois uma das condições é falsa
}

if (50 > 10 && 10 > 5) { // true e true
    echo "entrou no if 2 <br>";
}

if (50 > 10 && 10 > 500) { // true e false
    echo "entrou no if 3 <br>"; // não imprime, pois uma das condições é falsa
}

if (50 > 100 && 10 > 500) { // false e false
    echo "entrou no if 4 <br>"; // não imprime, pois ambas condições são falsas
}

$a = 10;
$b = 5;
$c = 12;
$d = 12;

if ($a > $b && $c == $d) {
    echo "Entrou no if 5 <br>"; // não imprime, pois uma das condições é falsa
}

if ($b <= $a && $c >= $d) {
    echo "Entrou no if 6 <br>";
}

if ($b === $a && $c > $d) {
    echo "Entrou no if 7 <br>"; // não imprime, pois uma das condições é falsa
}

if (($b <= $a && $c >= $d) && $a > $b) {
    echo "entrou no if 8 <br>";
}