<?php

$str = "Essa string é extremamente muito grande";

for ($i=0; $i < strlen($str); $i++) { 
    echo "$str[$i] <br>";
}