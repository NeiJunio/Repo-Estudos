-- 13/04/2025 -- 

-- MANIPULAÇÃO DE STRINGS NO SQL SERVER

/*
    -> Manipulação de strings é o processo de trabalhar com textos em colunas de tabelas. O SQL Server fornece várias funções para extrair, modificar e analisar esses textos.

*/

-- LEN() – Retorna o comprimento da string
SELECT LEN('SQL Server') AS Tamanho; -- Resultado: 10

-- LEFT() e RIGHT() – Retorna os primeiros ou últimos caracteres
SELECT LEFT('Desenvolvedor', 5);    -- Resultado: Desen
SELECT RIGHT('Desenvolvedor', 6);   -- Resultado: vedor

-- SUBSTRING() – Extrai parte de uma string
SELECT SUBSTRING('Programação', 2, 5); -- Resultado: rogra

-- CHARINDEX() – Retorna a posição de um caractere/palavra
SELECT CHARINDEX('a', 'Programação'); -- Resultado: 5

-- REPLACE() – Substitui parte de uma string
SELECT REPLACE('Olá Mundo', 'Mundo', 'SQL Server'); -- Resultado: Olá SQL Server

-- LTRIM() e RTRIM() – Remove espaços à esquerda ou direita
SELECT LTRIM('   texto');  -- Resultado: 'texto'
SELECT RTRIM('texto   ');  -- Resultado: 'texto'

-- UPPER() e LOWER() – Converte para maiúsculas ou minúsculas
SELECT UPPER('sql server');  -- Resultado: SQL SERVER
SELECT LOWER('SQL SERVER');  -- Resultado: sql server

-- CONCAT() – Concatena (junta) duas ou mais strings
SELECT CONCAT('Olá', ' ', 'Mundo') AS Saudacao; -- Resultado: Olá Mundo

-- Dica: CONCAT aceita qualquer número de argumentos, inclusive colunas.
SELECT CONCAT(PrimeiroNome, ' ', UltimoNome) AS NomeCompleto
FROM Clientes;



-- Exemplo prático:
-- Exemplo 1: Nome com espaço
SELECT LEFT('João da Silva', CHARINDEX(' ', 'João da Silva' + ' ') - 1);  
-- Resultado: João

-- Exemplo 2: Nome com vários espaços
SELECT LEFT('Maria Eduarda Costa', CHARINDEX(' ', 'Maria Eduarda Costa' + ' ') - 1);  
-- Resultado: Maria

-- Exemplo 3: Nome sem espaço
SELECT LEFT('Carlos', CHARINDEX(' ', 'Carlos' + ' ') - 1);  
-- Resultado: Carlos

/*
    Exerícios:

    1-) Converter nomes para maiúsculas (Person.Person)
    2-) Extrair o primeiro nome (Person.Person)
    3-) Mostrar os 4 primeiros do sobrenome (Person.Person)
    4-) Substituir traços por espaços em nomes de produtos (Production.Product)
    5-) Nomes que começam com 'M' (Person.Person)
    6-) Nome completo com hífen (Person.Person)
    7-) Produtos com 'Mountain' no nome (Production.Product)
    8-) Contar o número de caracteres do primeiro nome (Person.Person)
    9-) Obter os 3 últimos caracteres do sobrenome (Person.Person)
    10-) Extrair parte do nome usando SUBSTRING (Person.Person)
    11-) Encontrar a posição de um caractere no nome (Person.Person)
    12-) Remover espaços em branco à esquerda e à direita (Person.Person)
    13-) Converter nomes para minúsculas (Person.Person)
    14-)  Usar CONCAT para nome completo (Person.Person)       
*/
