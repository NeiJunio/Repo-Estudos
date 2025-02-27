<?php

$a = 4;
$b = 5;
$c = 6;
$d = 6;
$e = 7;

if ($a > $b) {
    echo "A é maior que B <br>"; // não imprime, pois a condição retorna false
}

if ($b > $a) {
    echo "B é menor que A <br>";
}

if ($d >= $c) {
    echo "D é maior ou igual a C <br>";
}


if ($d >= $a) {
    echo "D é maior ou igual a A <br>";
}

if ($d >= $e) {
    echo "D é maior ou igual a E <br>"; // não imprime, pois a condição retorna false
}