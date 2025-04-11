-- 10/04/2025 -- 

-- SELF JOIN

/*
    - É uma junção de uma tabela com ela mesma.

    - Requisito: uso de alias (AS) para diferenciar instâncias da tabela.

    - SINTAXE
        SELECT colunas
        FROM tabela AS A, tabela AS B
        WHERE condição

*/
-- Exemplo prático:
SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region;

/* Explicação:
    - A consulta faz um self join da tabela Customers com ela mesma.
    - Cada linha é comparada com todas as outras (produto cartesiano).
    - O WHERE filtra pares com a mesma região.
    - Resultado: clientes da mesma região, incluindo:
        - Cliente com ele mesmo (ex: Ana–Ana)
        - Pares repetidos em ordem invertida (ex: Ana–Bruno e Bruno–Ana)

-- Exemplo da tabela usada:

-- Tabela Customers:
-- +------------------+--------+
-- | ContactName      | Region |
-- +------------------+--------+
-- | Ana              | SP     |
-- | Bruno            | SP     |
-- | Carla            | RJ     |
-- +------------------+--------+

-- Resultado do self join com filtro A.Region = B.Region:
-- +------------------+--------+------------------+--------+
-- | A.ContactName    | A.Reg  | B.ContactName    | B.Reg  |
-- +------------------+--------+------------------+--------+
-- | Ana              | SP     | Ana              | SP     |
-- | Ana              | SP     | Bruno            | SP     |
-- | Bruno            | SP     | Ana              | SP     |
-- | Bruno            | SP     | Bruno            | SP     |
-- | Carla            | RJ     | Carla            | RJ     |
-- +------------------+--------+------------------+--------+
*/


/* 
    Exercícios:

    1-) Encontrar nome de data de contratação de todos os funcionários que foram contratados no mesmo ano 
    2-) saber na tabela detalhes do pedido (order details) quais produtos tem o mesmo percentual de desconto

*/