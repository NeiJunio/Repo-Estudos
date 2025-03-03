<?php

$arr = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
$i = 0;

while ($i < count($arr)) {

    $numeroAtual = $arr[$i];

    // Se o elemento foi =30 ou =40, pula pra direto pra próxima etapa, sem imprimí-los
    if ($numeroAtual == 30 || $numeroAtual == 40) {
        $i++;
        continue;
    }

    echo "Elemento $numeroAtual  <br>";
    $i++;
}

/*
    Saída:
    Elemento 10
    Elemento 20
    Elemento 50
    Elemento 60
    Elemento 70
    Elemento 80
    Elemento 90
    Elemento 100
*/