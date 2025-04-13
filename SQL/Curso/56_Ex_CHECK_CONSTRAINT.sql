-- Exercícios:

- Criar duas tabelas, e em cada uma delas, colocar uma restrição numérica

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL CHECK (Preco >= 0) -- garante que o preço não será negativo
);


CREATE TABLE Estoque (
    EstoqueID INT PRIMARY KEY,
    ProdutoID INT,
    Quantidade INT NOT NULL DEFAULT 0 -- inicia com valor zero, ou se acaso não for informado nenhum valor, sera preenchido com zero
);
