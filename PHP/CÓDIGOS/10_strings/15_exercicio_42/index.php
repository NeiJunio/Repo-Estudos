<?php

//
$str = "Cadê o meu queijo? Ele estava aqui em cima";

echo $str . "<br>";

// resgatar a palavra queijo com substr

$queijo = substr($str, 12, 6);
echo $queijo; // Saída: queijo