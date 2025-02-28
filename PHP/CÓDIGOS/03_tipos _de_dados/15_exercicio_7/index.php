<?php

$pessoa = [
    'nome' => 'Nei',
    'idade' => 21,
    'altura' => 1.82,
    'endereco' => 'Rua XYZ, 123'
];

$nome = $pessoa['nome'];
$idade = $pessoa['idade'];

if ($pessoa['idade'] >= 18) {
    echo "$nome é uma pessoa é maior de idade, com $idade anos";
} else {
    echo "$nome é umaa pessoa é menor de idade, com $idade anos";
}