-- 10/04/2025

-- UNION

/*
    - Combina resultados de duas ou mais consultas SELECT, removendo duplicatas.

    - UNION: remove duplicatas.
    - UNION ALL: mantém todas as linhas (inclusive duplicadas).
    
    - Regras para usar UNION
        -- Mesma quantidade de colunas em todas as consultas.
        -- Tipos de dados compatíveis entre as colunas.

    - SINTAXES:
        SELECT coluna1, coluna2 FROM tabela1
        UNION
        SELECT coluna1, coluna 2 FROM tabela2;

        ou 

        SELECT coluna1, coluna2 FROM tabela1
        UNION ALL
        SELECT coluna1, coluna2 FROM tabela2;

    - Obs: Diferença entre UNION e JOIN
        --UNION combina resultados verticalmente (linhas).
        -- JOIN combina resultados horizontalmente (colunas).

    - base de explicação:

        SELECT ProductID,
               Name,
               ProductNumber
          FROM Production.Product
         WHERE Name LIKE '%Chain%'

        retorna:
        +-----------+------------------+---------------+
        | ProductID |       Name       | ProductNumber |
        +-----------+------------------+---------------+
        |   952     | Chain            | CH-0234       |
        |   324     | Chain Stays      | CS-2812       |
        |   322     | Chainring        | CR-7833       |
        |   320     | Chainring Bolts  | CB-2903       |
        |   321     | Chainring Nut    | CN-6137       |
        +-----------+------------------+---------------+


        SELECT ProductID,
        	   Name,
        	   ProductNumber
          FROM Production.Product
         WHERE Name LIKE '%Decal%'

        retorna:

        +-----------+---------+---------------+
        | ProductID |  Name   | ProductNumber |
        +-----------+---------+---------------+
        |   325     | Decal 1 | DC-8732       |
        |   326     | Decal 2 | DC-9824       |
        +-----------+---------+---------------+

*/

--> Se fiz o UNION entre os dois SELECTs, ficará assim:

SELECT ProductID,
	   Name,
	   ProductNumber
  FROM Production.Product
 WHERE Name LIKE '%Chain%'
 UNION
SELECT ProductID,
	   Name,
	   ProductNumber
  FROM Production.Product
 WHERE Name LIKE '%Decal%'


/* Retorna:
    +-----------+------------------+---------------+
    | ProductID |       Name       | ProductNumber |
    +-----------+------------------+---------------+
    |   320     | Chainring Bolts  | CB-2903       |
    |   321     | Chainring Nut    | CN-6137       |
    |   322     | Chainring        | CR-7833       |
    |   324     | Chain Stays      | CS-2812       |
    |   325     | Decal 1          | DC-8732       |
    |   326     | Decal 2          | DC-9824       |
    |   952     | Chain            | CH-0234       |
    +-----------+------------------+---------------+
*/


/*
    Exercícios:

    1-) Selecionar o Name o ProductNumber em um SELECT onde o ProductNumber comece com B, e unir com um SELECT que seleciona o Name e ProductNumber, onde o Name começa com B (tabela Production.Product)

*/