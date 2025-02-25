-- 25/02/2025 --

--> Os JOINS são usados para combinar registros de duas ou mais tabelas baseando-se em uma condição comum.


-->  INNER JOIN  ---------------------------------------------------------------
    
    ---> Retorna apenas os registros que possuem correspondência nas duas tabelas.

    SELECT a.nome_coluna, b.outra_coluna
    FROM tabela_a a
    INNER JOIN tabela_b b ON a.chave_primaria = b.chave_estrangeira;


--> LEFT JOIN  ----------------------------------------------------------------- 

    ---> Retorna todos os registros da tabela à esquerda e os correspondentes da direita. Caso não haja correspondência, retorna NULL.
    
    SELECT a.nome_coluna, b.outra_coluna
    FROM tabela_a a
    LEFT JOIN tabela_b b ON a.chave_primaria = b.chave_estrangeira;


--> RIGHT JOIN  ----------------------------------------------------------------
 
    ---> Retorna todos os registros da tabela à direita e os correspondentes da esquerda.

    SELECT a.nome_coluna, b.outra_coluna
    FROM tabela_a a
    RIGHT JOIN tabela_b b ON a.chave_primaria = b.chave_estrangeira;


--> FULL JOIN  -----------------------------------------------------------------

    ---> Retorna todos os registros de ambas as tabelas, inserindo NULL quando não há correspondência.

    SELECT a.nome_coluna, b.outra_coluna
    FROM tabela_a a
    FULL JOIN tabela_b b ON a.chave_primaria = b.chave_estrangeira;
