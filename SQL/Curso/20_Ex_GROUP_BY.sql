-- Exercícios

--   1-) Quantas pessoas tem o mesmo MiddleName? (agrupar por MiddleName)

  SELECT MiddleName, COUNT(MiddleName) AS Quantidade
    FROM Person.Person
GROUP BY MiddleName


-- 2-) Em média, qual a quantidade(quantity) que cada produto é vendido na loja?

  SELECT ProductID, AVG(OrderQty) AS Media
    FROM Sales.SalesOrderDetail
GROUP BY ProductID


-- 3-) Qual foram os 10 registros de vendas que tiveram maiores valor total vendido(LineTotal) por produto, do maior valor para o menor

  SELECT TOP 10 ProductID, SUM(LineTotal) AS Valor
    FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC


-- 4-) Quantos produtos e qual a quantidade média de produtos cadastrados nas ordens de serviço(WorerOrder), agrupados por ProductId

  SELECT ProductId, COUNT(ProductID) AS Contagem, AVG(OrderQty) AS Media
    FROM Production.WorkOrder
GROUP BY ProductID


-- 5-) Qual a quantidade(OrderQty) que cada produto é vendido na loja?

  SELECT ProductID, COUNT(OrderQty) AS Quantidade
    FROM Sales.SalesOrderDetail
GROUP BY ProductID