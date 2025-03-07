<?php

function verificandoNumero($numero)
{
    if ($numero % 2 == 0) {
        echo "o número $numero é PAR <br>";
    } else {
        echo "o número $numero é ÍMPAR<br>";
    }
}

verificandoNumero(10); // O número 10 é PAR
verificandoNumero(11); // O número 11 é PAR
