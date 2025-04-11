-- Exercícios

-- 1-) Encontrar nome de data de contratação de todos os funcionários que foram contratados no mesmo ano 


SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
  FROM Employees A, Employees B
 WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)

/* Retorna:

    +-----------+-------------------------+-----------+-------------------------+
    | FirstName | HireDate                | FirstName | HireDate                |
    +-----------+-------------------------+-----------+-------------------------+
    | Nancy     | 1992-05-01 00:00:00.000 | Nancy     | 1992-05-01 00:00:00.000 |
    | Andrew    | 1992-08-14 00:00:00.000 | Nancy     | 1992-05-01 00:00:00.000 |
    | Janet     | 1992-04-01 00:00:00.000 | Nancy     | 1992-05-01 00:00:00.000 |
    | Nancy     | 1992-05-01 00:00:00.000 | Andrew    | 1992-08-14 00:00:00.000 |
    | Andrew    | 1992-08-14 00:00:00.000 | Andrew    | 1992-08-14 00:00:00.000 |
    | Janet     | 1992-04-01 00:00:00.000 | Andrew    | 1992-08-14 00:00:00.000 |
    | Nancy     | 1992-05-01 00:00:00.000 | Janet     | 1992-04-01 00:00:00.000 |
    | Andrew    | 1992-08-14 00:00:00.000 | Janet     | 1992-04-01 00:00:00.000 |
    | Janet     | 1992-04-01 00:00:00.000 | Janet     | 1992-04-01 00:00:00.000 |
    | Margaret  | 1993-05-03 00:00:00.000 | Margaret  | 1993-05-03 00:00:00.000 |
    +-----------+-------------------------+-----------+-------------------------+
*/


-- 2-) saber na tabela detalhes do pedido (order details) quais produtos tem o mesmo percentual de desconto

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
  FROM [Order Details] A, [Order Details] B
 WHERE A.Discount = B.Discount


/* Retorna
    +-----------+----------+-----------+----------+
    | ProductID | Discount | ProductID | Discount |
    +-----------+----------+-----------+----------+
    |    11     |    0     |    11     |    0     |
    |    11     |    0     |    42     |    0     |
    |    11     |    0     |    72     |    0     |
    |    11     |    0     |    14     |    0     |
    |    11     |    0     |    51     |    0     |
    |    11     |    0     |    41     |    0     |
    |    11     |    0     |    65     |    0     |
    |    11     |    0     |    60     |    0     |
    |    11     |    0     |    31     |    0     |
    |    11     |    0     |    39     |    0     |
    +-----------+----------+-----------+----------+
*/
