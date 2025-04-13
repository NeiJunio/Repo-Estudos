-- Exercícios

-- criar duas tabelas, e cada uma delas devem ter 2 campos obrigatórios

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL
);


CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT NOT NULL,
    DataPedido DATE NOT NULL
);
