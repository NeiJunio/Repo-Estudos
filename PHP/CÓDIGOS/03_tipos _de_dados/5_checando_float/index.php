<?php

    $a = "teste";
    $b = 12.8;

    if (is_float($a)) {
        echo "É float <br>"; // não será impresso
    }

    if (is_float($b)) {
        echo "É float 2 <br>";
    }