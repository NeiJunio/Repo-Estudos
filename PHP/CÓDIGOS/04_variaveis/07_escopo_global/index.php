<?php

$teste = "asd";

echo "$teste global 1 <br>";

if (5 > 2) {
    $teste = "dsa";

    echo "$teste if <br>";
}

echo "$teste global 2 <br>";

function funcao()
{
    $teste = "xxx";

    echo "$teste local <br>";
}

funcao();

function testandoGlobal()
{
    global $teste; // com essa instrução, consigo acessar uma variável global dentro do escopo local

    $teste = "yyy"; //porém, eu tambem consigo alterar o valor da funçaõ global por meio do escopo local (antes imprimia "asd", agora imprime "yyy")

    echo "$teste global função <br>";
}

testandoGlobal();