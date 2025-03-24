<?php

$arr =[
    'porta' => 500,
    'vidro' => 800,
    'motor' =>2000,
    'adesivo' => 5
];

function itensCaros($arr){
     
    $arrItensCaros = [];

    foreach ($arr as $item => $preco) {
        if($preco > 10){
            array_push($arrItensCaros, $item);
        }
    }

    return $arrItensCaros;
}

$novoArr = itensCaros($arr);
print_r($novoArr);