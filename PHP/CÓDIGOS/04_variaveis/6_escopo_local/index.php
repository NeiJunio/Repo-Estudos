<?php

$x = 10;

echo "$x global <br/>";

function teste(){
    $x = 5;

    echo "$x local<br/>";
}

teste();
teste();