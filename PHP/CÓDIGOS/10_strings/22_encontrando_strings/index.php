<?php

$str = "Estamos testando o método strpos para encontrar strings";

$testeEncontrar = strpos($str, "strpos");

echo "$testeEncontrar <br>"; // Saída: 27 (posição do primeiro caracter do texto procurado na string)

$testeEncontrar2 = strpos($str, "java");

echo "$testeEncontrar2 <br>"; // Saída: 0 (o primeiro caractere da string é o 0º, então não é encontrado)

if($testeEncontrar2 === false){
    echo "String java não encontrada na variável str <br>";
}


// posso usar uma variável contendo o texto desejado
$palavra = "para";
$testeEncontrar3 = strpos($str, $palavra);

echo "$testeEncontrar3 <br>"; // Saída: 18 (posição do primeiro caracter do texto procurado na string)