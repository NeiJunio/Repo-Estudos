-- Exercícios

-- 1-) Estamos querendo identificar as provincias (stateProvinceId) com o maior numero de cadastros em nosso sistema, então é preciso encontrar quais províncias (stateProvinceId) estão registradas no banco mais que 1000 vezes

  SELECT StateProvinceID, COUNT(StateProvinceID) AS Quantidade
    FROM Person.Address
GROUP BY StateProvinceID
  HAVING COUNT(StateProvinceID) > 1000


-- 2-) Sendo que se trata  de uma multinacional, os gentes querem saber quais produtos (productId) não estão trazendo, em média, no mínimo 1 milhão em total de vendas (lineTotal) (tabela sales.salesOrderDetail)

  SELECT ProductID, AVG(LineTotal)
    FROM Sales.SalesOrderDetail
GROUP BY ProductID
  HAVING AVG(LineTotal) < 1000000
