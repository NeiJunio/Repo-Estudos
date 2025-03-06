<?php

include_once "backend.php";

?>

<h1>Seja bem-vindo ao nosso site, <?= $nome; ?>!!!</h1>

<h2>Confira nossos produtos:</h2>

<ul>
    <?php foreach ($produtos as $produto): ?>
        <li><?= $produto; ?></li>
    <?php endforeach; ?>
</ul>