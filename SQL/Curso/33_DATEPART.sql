-- 10/04/2025 --

-- DATEPART

/*
    - manipulação de data
    - usada para extrair partes específicas de uma data, como o ano, mês, dia, hora, minuto, etc.
    - DATEPART é uma função usada para extrair partes específicas de uma data,
como ano, mês, dia, hora, minuto, segundo, etc.
    
    - SINTAXE:
        DATEPART(parte_da_data, data)

        -- parte_da_data: A parte da data que você deseja obter (ex: year, month, day).
        -- data: A data de onde será extraída a informação.

    - Exemplos:
        SELECT DATEPART(year, '2025-04-08')     -- Resultado: 2025
        SELECT DATEPART(month, '2025-04-08')    -- Resultado: 4
        SELECT DATEPART(day, '2025-04-08')      -- Resultado: 8
        SELECT DATEPART(weekday, '2025-04-08')  -- Resultado: 3 (terça-feira)
        SELECT DATEPART(quarter, '2025-04-08')  -- Resultado: 2

    - Abreviações comuns:

    +--------------+---------------+-------------------+
    | Parte        | Abreviação    | Descrição         |
    +--------------+---------------+-------------------+
    | Ano          | yy / yyyy     | year              |
    | Trimestre    | qq / q        | quarter           |
    | Mês          | mm / m        | month             |
    | Dia          | dd / d        | day               |
    | Dia da semana| dw            | weekday           |
    | Hora         | hh            | hour              |
    | Minuto       | mi / n        | minute            |
    | Segundo      | ss / s        | second            |
    | Milissegundo | ms            | millisecond       |
    +--------------+---------------+-------------------+
*/

SELECT DataPedido, DATEPART(year, DataPedido) AS AnoPedido
FROM Pedidos;

-- Dica: Você pode usar o DATEPART junto com cláusulas WHERE, GROUP BY ou ORDER BY para filtrar ou agrupar por partes da data!

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Mês
  FROM Sales.SalesOrderHeader


  SELECT AVG(TotalDue) Media, DATEPART(month, OrderDate) as Mês
    FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mês


/* 
    Exercícios:

    1-) Encontre o Id e o Mês da ordem de venda
    2-) Encontre a media do total, e o Mês da ordem de venda, agrupe pelo mês da data e ordene pelo Mês

*/