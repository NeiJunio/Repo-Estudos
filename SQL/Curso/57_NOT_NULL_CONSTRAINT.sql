-- 13/04/2025 --

-- NOT NULL CONSTRAINT 

/*
    -> A restrição NOT NULL é usada para garantir que uma coluna não aceite valores nulos.

    -> Isso significa que o campo é obrigatório e deve ser preenchido com um valor válido ao inserir ou atualizar os dados.
*/

-- Exemplo 1: Criando uma tabela com colunas NOT NULL
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,        -- Obrigatório
    Email NVARCHAR(100) NULL,           -- Opcional
    Telefone NVARCHAR(20) NOT NULL      -- Obrigatório
);

-- Exemplo 2: Inserção válida (todos os campos NOT NULL são preenchidos)
INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
              VALUES (1, 'João da Silva', 'joao@email.com', '11999999999');


-- Exemplo 3: Inserção inválida (faltando valor em campo NOT NULL)
-- Isso causará um erro, pois o campo "Nome" é obrigatório
INSERT INTO Clientes (ClienteID, Email, Telefone)
              VALUES (2, 'maria@email.com', '11888888888');


-- Exemplo 4: Adicionando a restrição NOT NULL em uma tabela existente
-- Suponha que já existe uma tabela chamada "Produtos" e queremos tornar a coluna "Preco" obrigatória

-- Primeiro, altere a tabela para garantir que a coluna não tenha valores nulos existentes:
UPDATE Produtos
   SET Preco = 0
 WHERE Preco IS NULL;

-- Depois, aplique a restrição:
ALTER TABLE Produtos
ALTER COLUMN Preco DECIMAL(10,2) NOT NULL;

-- Observação: Ao aplicar NOT NULL, certifique-se de que nenhum valor nulo já exista na coluna.