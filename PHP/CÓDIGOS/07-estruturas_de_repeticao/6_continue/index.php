<?php

$a = 10;

while ($a > 0) {

    if ($a == 5 || $a == 7) {
        echo "pulou a execução $a <br>";

        $a--;

        continue;
    }

    echo "executando o loop A: $a <br>";

    $a--;
}

/*
    saída:

    executando o loop 10
    executando o loop 9
    executando o loop 8
    pulou a execução 7
    executando o loop 6
    pulou a execução 5
    executando o loop 4
    executando o loop 3
    executando o loop 2
    executando o loop 1

*/

echo "<br><br>";

$b = 10;

while ($b > 0) {

    if ($b == 5 || $b == 7) {
        echo "pulou a execução $b <br>";

        $b--;

        continue;
    }

    if ($b == 2) {
        echo "terminando o loop break $b <br>";
        break;
    }

    echo "executando o loop B: $b <br>";

    $b--;
}

/*
    saída:

    executando o loop B: 10
    executando o loop B: 9
    executando o loop B: 8
    pulou a execução 7
    executando o loop B: 6
    pulou a execução 5
    executando o loop B: 4
    executando o loop B: 3
    terminando o loop break 2
*/