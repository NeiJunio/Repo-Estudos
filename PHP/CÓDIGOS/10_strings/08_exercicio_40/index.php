<?php

$str = "O rato roeu a roupa do rei de Roma";

$letrasA = 0;

for ($i=0; $i < strlen($str); $i++) { 

    if ($str[$i] === 'a') {
        $letrasA++;
    }
}

echo "Número total de A's é de: $letrasA";