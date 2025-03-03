<?php

// Condição verdadeira
if (5 > 2) {
    echo "Entrou no if <br>";
}

// Condição falsa
if (5 > 20) {
    echo "Não entrou no if <br>"; // não imprime pois a condição é falsa
}

// Uso op.lógico
if (10 === 10 && 9 > 3) {
    echo "Entrou no if 2 <br>"; // imprime pois as duas condições são verdadeiras
}

// Variáveis
$a = 10;
$b = 5;

$c = "Deu certo, entrou no if 3 <br>";

if ($a >= $b) {
    echo $c;
}