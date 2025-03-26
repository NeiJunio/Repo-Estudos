<?php

$frase = "testando o explode";

$fraseArray = explode(" ", $frase);

echo $frase . "<br>"; // Saída: testando o explode

print_r($fraseArray); // Saída: Array ( [0] => testando [1] => o [2] => explode )
