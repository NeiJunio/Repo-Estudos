-- Exercícios

-- 1-) Encontrar o firstName e o lastName, trazendo as colunas com nome em português (Person.Person)

SELECT FirstName AS 'Nome', LastName AS 'Sobrenome'
  FROM Person.Person

-- 2-) Encontrar o Product.Number da tabela production.product e trazer a coluna com o nome em português "Número do produto"
  
SELECT ProductNumber AS 'Número do produto'
  FROM Production.Product

-- 3-) Encontrar o unitPrice da tabela sales.salesOrderDetail e renomeá-la para "Preço unitário"

SELECT UnitPrice AS 'Preço unitário'
  FROM Sales.SalesOrderDetail