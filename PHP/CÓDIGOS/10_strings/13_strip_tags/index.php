<?php

$textoHtml = "<p>Testando paragrafo</p><div>uma div</div><p>outro paragrafo</p>";

echo $textoHtml;

/* saída

Testando paragrafo
uma div
outro paragrafo

*/

echo strip_tags($textoHtml);

/* saída
    Testando paragrafouma divoutro paragrafo
*/
