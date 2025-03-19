-- 19/03/2025 --

-- MIN, MAX, SUM e AVG

/* 
    -> Servem para agregar ou combinar dados em 1 resultado apenas

    -> MIN(column): Obtém o valor mínimo de uma coluna
    -> MAX(column): Obtém o valor máximo de uma coluna
    -> SUM(column): Soma os valores de uma coluna
    -> AVG(column): Calcula a média dos valores de uma coluna

    -> Posso usar AS "nome_da_coluna_temporaria", para nomear a coluna que trará o resultado

    -> SINTAXES:

    SELECT SUM(coluna) AS nome_da_coluna_temporaria
      FROM nome_da_tabela

    SELECT MIN(coluna) AS nome_da_coluna_temporaria
      FROM nome_da_tabela

    SELECT MAX(coluna) AS nome_da_coluna_temporaria
      FROM nome_da_tabela

    SELECT AVG(coluna) AS nome_da_coluna_temporaria
      FROM nome_da_tabela
*/

SELECT SUM(LineTotal) AS Soma
  FROM Sales.SalesOrderDetail


SELECT MIN(LineTotal) AS Minino
  FROM Sales.SalesOrderDetail


SELECT MAX(LineTotal) AS Maximo
  FROM Sales.SalesOrderDetail


SELECT AVG(LineTotal) AS Media
  FROM Sales.SalesOrderDetail


/*
    1-) Encontre o valor da soma das vendas da tabela Sales.SalesOrderDetail
    2-) Encontre o valor do mínimo das vendas da tabela Sales.SalesOrderDetail
    3-) Encontre o valor do máximo das vendas da tabela Sales.SalesOrderDetail
    4-) Encontre a média das vendas da tabela Sales.SalesOrderDetail
 */