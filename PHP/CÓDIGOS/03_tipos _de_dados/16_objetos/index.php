<?php

class Pessoa
{
    public $nome; // Declarando a propriedade nome

    function falar()
    {
        echo "Olá pessoal!";
    }
}

$nei = new Pessoa(); //Criando uma nova Pessoa

$nei->nome = "Nei"; //Adicionando uma nova propriedade para essa nova Pessoa

echo $nei->nome;

echo "<br>";

$nei->falar(); // usa-se a seta (->) para acessar tanto uma propriedade, quanto função ou método

