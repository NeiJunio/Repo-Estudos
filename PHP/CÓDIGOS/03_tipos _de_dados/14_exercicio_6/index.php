<?php

$carro = [
    'marca' => 'BMW',
    'rodas' => 4,
    'cor' => 'preto',
    'ano' => 2020,
    'teto_solar' => false // essa linha não aparece, pois tem valor False
];

print_r($carro);

echo "<br>";

$marca = $carro['marca'];
$ano = $carro['ano'];

echo "O carro é da marca $marca, ano $ano";