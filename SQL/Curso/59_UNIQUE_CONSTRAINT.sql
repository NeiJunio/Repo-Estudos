-- 13/04/2025 --


-- UNIQUE CONSTRAINT

/*
    -> A UNIQUE CONSTRAINT garante que todos os valores em uma coluna (ou combinação de colunas)

    -> sejam únicos. Ou seja, não é permitido ter valores duplicados nessa(s) coluna(s).
    
    -> Essa restrição é útil, por exemplo, em campos como email, CPF, matrícula, etc.

    -> Colunas com UNIQUE podem conter NULL, mas somente um valor NULL é permitido.
    -> É possível usar UNIQUE com várias colunas (restrição composta).
*/



-- 1. Criação de uma nova tabela com UNIQUE CONSTRAINT direta
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE -- Não permite emails duplicados
);


-- 2. Criação de tabela com CONSTRAINT nomeada
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    CPF CHAR(11),
    CONSTRAINT UQ_Clientes_CPF UNIQUE (CPF) -- CPF não pode se repetir
);


-- 3. Adicionando UNIQUE CONSTRAINT em uma tabela já existente
ALTER TABLE Produtos
ADD CONSTRAINT UQ_Produtos_Codigo UNIQUE (Codigo);


-- 4. Excluindo uma UNIQUE CONSTRAINT existente
ALTER TABLE Produtos
DROP CONSTRAINT UQ_Produtos_Codigo;


-- 5. Criando uma UNIQUE CONSTRAINT composta (duas colunas)
CREATE TABLE Vendas (
    VendaID INT PRIMARY KEY,
    ProdutoID INT,
    ClienteID INT,
    CONSTRAINT UQ_Vendas_Produto_Cliente UNIQUE (ProdutoID, ClienteID)
);
-- Isso garante que um mesmo cliente não possa comprar o mesmo produto mais de uma vez.


-- 6. Exemplo com UNIQUE e CHECK em conjunto
CREATE TABLE CarteiraMotorista (
    Id INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Idade INT CHECK (Idade >= 18),
    CodigoCNH INT NOT NULL UNIQUE
);

-- ========================================
-- OBSERVAÇÕES IMPORTANTES
-- ========================================

