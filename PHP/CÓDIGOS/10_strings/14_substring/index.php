<?php

$str = "esta é a minha string";

$minha = substr($str, 10, 5);

// vai na variável $str, começa a partir do 10° caracter, e a partir dele, conta 5 caracteres

echo $str . "<br>"; // saída: esta é a minha string

echo $minha . "<br>"; // saída: minha

$str2 = "Testando esta string abc";
$novaString = substr($str2, 8); // vai pegar todos os caracteres a partir do 8º

echo $novaString . "<br>"; // saída: esta string abc

$novaString2 = substr($str2, 8, -3); // vai pegar todos os caracteres a partir do 8º, mas vai excluir os 3 últimos

echo $novaString2 . "<br>"; // saída: esta string