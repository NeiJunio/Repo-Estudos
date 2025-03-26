<?php

$str = "Estamos procurando strings com o método strpos para encontrar strings";

$palavra = strrpos($str, "strings");

echo "$palavra <br>";


$palavra2 = strpos($str, "java");

echo "$palavra2 <br>"; // Saída: 0 (o primeiro caractere da string é o 0º, então não é encontrado)

if ($palavra2 === false) {
    echo "String java não encontrada na variável str <br>";
}


$p = substr($str, strpos($str, "strpos"), 7);

echo $p . "<br>"; // Saída: strpos