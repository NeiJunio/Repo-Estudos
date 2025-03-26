<?php

$str = "carro - navio - helicóptero - barco - jangada";

$arr = explode("-", $str);

echo $str . "<br>"; // Saída: carro - navio - helicóptero - barco - jangada
print_r($arr); // Saída: Array ( [0] => carro [1] => navio [2] => helicóptero [3] => barco [4] => jangada )


for ($i=0; $i < count($arr); $i++) { 
    echo "item: $arr[$i] <br>";
}

