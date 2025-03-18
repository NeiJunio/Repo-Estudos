-- Exercícios:

--  1-) Obtenha o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato

  SELECT TOP 10 ProductId
    FROM Production.Product
ORDER BY ListPrice DESC


-- 2-) Obtenha o nome e o numero dos produtos que tem o ProductId entre 1~4
  SELECT TOP 4 Name, ProductNumber
    FROM Production.Product
ORDER BY ProductID ASC