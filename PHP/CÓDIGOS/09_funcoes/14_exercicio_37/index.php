<?php

function defineCorCarro($cor = "vermelho"){
    return "O carro é $cor <br>";
}

echo defineCorCarro(); // O carro é vermelho
echo defineCorCarro("verde");