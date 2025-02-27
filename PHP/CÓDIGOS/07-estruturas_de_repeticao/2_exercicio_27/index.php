<?php

// Array imprimindo apenas as strings

$arr = [5, "Nei", true, false, "Junio", 12.8];

$x = count($arr); // conta quandos itens tem no array
$y = 0;

while ($y < $x) {
    if (is_string($arr[$y])) {
        echo $arr[$y] . "<br>";
    }

    $y++; // incrementa o contador para ir para o próximo item
}
