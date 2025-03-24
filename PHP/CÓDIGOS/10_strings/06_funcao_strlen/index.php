<?php

$str1 = "Essa string é extremamente grande";
$str2 = "String curta";

echo strlen($str1) . "<br>"; // Retorno: 35
echo strlen($str2) . "<br>"; // Retorno: 12

$len1 = strlen($str1);
$len2 = strlen($str2);

if ($len1 > $len2) {
    echo "A string 1 é maior que a string 2.";
} else if($len = $len2){
    echo "Ambas possuem o mesmo tamanho.";
} else{
    echo "A string 2 é maior que a string 1.";
}