<?php

if (5 == "5") {
    echo "5 é igual a 5<br>"; //imprime, pois está checando somente o valor
}

if (5 === "5") {
    echo "5 é igual a 5 (2)<br>"; //não imprime, pois está checando o valor e tippo, e os tipos estão diferentes nesse caso
}

if (5 === 5) {
    echo "5 é igual a 5 (3)<br>"; // imprime, pois está checando o valor e tipo, e ambos são iguais nesse caso
}