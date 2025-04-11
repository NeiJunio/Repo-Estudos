-- Exercícios

-- 1-) Encontre o Id e o Mês da ordem de venda

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Mês
  FROM Sales.SalesOrderHeader

-- 2-) Encontre a media do total, e o Mês da ordem de venda, agrupe pelo mês da data e ordene pelo Mês

  SELECT AVG(TotalDue) Media, DATEPART(month, OrderDate) as Mês
    FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mês