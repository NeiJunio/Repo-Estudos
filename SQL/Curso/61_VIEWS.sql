-- 13/04/2025 -- 

-- VIEWS

/*
    -> Uma VIEW (ou visão) é uma tabela virtual baseada em uma  consulta SQL.

    -> Ela não armazena dados fisicamente, apenas representa uma consulta pré-definida.
    
    -> Usada para simplificar consultas, proteger dados e reutilizar lógica.

    -> SINTAXE:
        CREATE VIEW nome_da_view AS
        SELECT colunas
        FROM tabela
        WHERE condição;

*/

-- Exemplo Prático:
-- Suponha que você tenha uma tabela chamada 'Clientes' com os campos:
-- Id, Nome, Email, Cidade, Ativo
-- E deseja visualizar apenas os clientes ativos.

-- Primeiro, verifique se a view já existe e exclua para recriar
IF OBJECT_ID('vw_ClientesAtivos', 'V') IS NOT NULL
    DROP VIEW vw_ClientesAtivos;
GO

-- Criação da view que retorna apenas os clientes ativos
CREATE VIEW vw_ClientesAtivos AS
SELECT Id, Nome, Email, Cidade
FROM Clientes
WHERE Ativo = 1;
GO

-- Você pode agora usar essa view como se fosse uma tabela:
SELECT * FROM vw_ClientesAtivos;


-- EXEMPLO 1 – VIEW DE CLIENTES ATIVOS

-- Verifica se a view já existe e exclui antes de criar novamente
IF OBJECT_ID('vw_ClientesAtivos', 'V') IS NOT NULL
    DROP VIEW vw_ClientesAtivos;
GO

-- Criação da view que retorna apenas os clientes ativos
CREATE VIEW vw_ClientesAtivos AS
SELECT Id, Nome, Email, Cidade
FROM Clientes
WHERE Ativo = 1;
GO



-- EXEMPLO 2 – VIEW DE PESSOAS COM TÍTULO 'Ms.'

-- Verifica se a view já existe e exclui antes de criar novamente
IF OBJECT_ID('Pessoas Simplificado', 'V') IS NOT NULL
    DROP VIEW [Pessoas Simplificado];
GO

-- Criação da view que mostra nomes de pessoas com o título 'Ms.'
CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.';
GO


-- COMO USAR AS VIEWS

-- Você pode consultar as views como se fossem tabelas comuns:

SELECT * FROM vw_ClientesAtivos;
SELECT * FROM [Pessoas Simplificado];

