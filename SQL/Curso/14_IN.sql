-- 18/03/2025 --

-- IN e NOT IN

/*
    -> São usados junto com a cláusula WHERE
    -> IN é utilizado para verificar se um valor pertence a uma lista de valores especificados
    -> simplifica consultas que, de outra forma, precisariam de múltiplas comparações OR.

    -> SINTAXE:
        SELECT coluna1, coluna2
          FROM nome_da_tabela
         WHERE coluna1 IN (valor1, valor2, valor3, ...);


    -> NOT IN é é utilizado para consultar um valor não pertence a uma lista de valores especificados

    -> SINTAXE:
        SELECT coluna1, coluna2
          FROM nome_da_tabela
         WHERE coluna1 NOT IN (valor1, valor2, valor3, ...);
*/


SELECT *
  FROM Person.Person
 WHERE BusinessEntityID IN (2,7,13)


SELECT *
  FROM Person.Person
 WHERE BusinessEntityID NOT IN (2,7,13)