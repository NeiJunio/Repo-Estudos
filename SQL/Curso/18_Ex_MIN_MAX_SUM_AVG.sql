-- Exercícíos

-- 1-) Encontre o valor da soma das vendas da tabela Sales.SalesOrderDetail

SELECT SUM(LineTotal) AS Soma
  FROM Sales.SalesOrderDetail


-- 2-) Encontre o valor do mínimo das vendas da tabela Sales.SalesOrderDetail

SELECT MIN(LineTotal) AS Minino
  FROM Sales.SalesOrderDetail


-- 3-) Encontre o valor do máximo das vendas da tabela Sales.SalesOrderDetail

SELECT MAX(LineTotal) AS Maximo
  FROM Sales.SalesOrderDetail


-- 4-) Encontre a média das vendas da tabela Sales.SalesOrderDetail

SELECT AVG(LineTotal) AS Media
  FROM Sales.SalesOrderDetail