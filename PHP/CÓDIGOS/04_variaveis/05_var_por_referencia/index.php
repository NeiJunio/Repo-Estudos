<?php

$x = 2;
$y =& $x; // y também recebe o valor 2


echo $x;
echo "<br>";
echo $y;
echo "<br>";

$y = 15;

echo "Atribuuião após mudança na ref:";
echo "<br>";

echo $x;
echo "<br>";
echo $y;
echo "<br>";

$x = 20;

echo "Atribuuião após mudança na ref2:";
echo "<br>";

echo $x;
echo "<br>";
echo $y;
echo "<br>";