<?php

// comparação 1
if (15 > 5 && "João" === "João") {
    echo "A comparação 1 é verdadeira <br>";
}

// comparação 2
if (is_string("teste") > 5 && 1) {
    echo "A comparação 2 é verdadeira <br>"; //Não imprime
}

// comparação teste
if (10 > 5 && 1) {
    echo "A comparação teste é verdadeira <br>";
}

// comparação 3
if (2 == 3 && 5 >= 3) {
    echo "A comparação 3 é verdadeira <br>"; //Não imprime
}