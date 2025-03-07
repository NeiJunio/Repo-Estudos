<?php

$arr = [];

for ($i=0; $i < 10; $i++) { 
    array_push($arr, $i);
}

// print_r($arr); // Saída: Array ( [0] => 0 [1] => 1 [2] => 2 [3] => 3 [4] => 4 [5] => 5 [6] => 6 [7] => 7 [8] => 8 [9] => 9 )


function arrayMaiorQueSete($array) {

    $arrayRetorno = [];

    for ($i=0; $i < count($array); $i++) { 
        if ($array[$i] > 7){
            array_push($arrayRetorno, $array[$i]);
        }
    }

    return $arrayRetorno;
}

$arrayMaiorQueSete = arrayMaiorQueSete($arr);

print_r($arrayMaiorQueSete); 