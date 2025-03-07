<?php

function isPrime($numero)
{
    if ($numero < 2) {
        return false;
    }

    for ($i = 2; $i <= sqrt($numero); $i++) {
        if ($numero % $i == 0) {
            return false;
        }
    }
    return true;

}

echo isPrime(20);