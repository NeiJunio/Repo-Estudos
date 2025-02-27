<?php

$vel = 40;
$velMax= 40;

if ($vel<$velMax){
    echo "Você está dentro da velocidade permitida";
} else if ($vel == $velMax){
    echo "Você está na velocidade máxima permitida";
} else{
    echo "Você ultrapassou a velocidade permitida e, por isso, receberá uma multa";
}