<?php

$x = 0;

while ($x < 50) {
    echo "x = $x ; (externo)<br>";

    $y = 0;
    while ($y < 20) {
        echo "y = $y ; (interno)<br>";
        $y += 4;
    }

    $x += 10;
}