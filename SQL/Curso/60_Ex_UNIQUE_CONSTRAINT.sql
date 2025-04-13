-- Exercícios:


-- Criar duas tabelas e definir campos únicos para elas

CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    CodigoProduto NVARCHAR(50) NOT NULL UNIQUE
);
