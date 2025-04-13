-- 13/84/2025 -- 

-- PK E FK

/*

    1. Chave Primária (Primary Key):
        - A chave primária é usada para identificar de forma única cada   registro em uma tabela.
        - Cada tabela pode ter apenas uma chave primária.
        - Os valores na chave primária não podem se repetir e não podem     ser nulos.
        - Normalmente, é usada em colunas como id, cpf, matrícula, etc.

    -> SINTAXE: :
        CREATE TABLE NomeDaTabela (
            NomeColuna1 TipoDeDado [restrições],
            NomeColuna2 TipoDeDado [restrições],
            ...
        );

    2. Chave Estrangeira (Foreign Key):
        - A chave estrangeira é usada para criar um relacionamento entre  duas tabelas.
        - Ela faz referência a uma chave primária em outra tabela.
        - Garante a integridade referencial, ou seja, só aceita valores     que existam na tabela referenciada.

    -> SINTAXE:
        CREATE TABLE NomeDaTabela (
            ColunaID INT PRIMARY KEY,
            OutraColuna NVARCHAR(100),
            ChaveEstrangeiraID INT,

            FOREIGN KEY (ChaveEstrangeiraID) REFERENCES TabelaReferenciada      (ColunaReferenciada)
        );


    -> Resumo:
        - Chave primária identifica cada registro de forma única.
        - Chave estrangeira conecta tabelas e garante integridade dos   dados.

*/

CREATE TABLE Clientes (
        ClienteID INT PRIMARY KEY,
        Nome VARCHAR(100),
        Email VARCHAR(100),
        DataCadastro DATE DEFAULT GETDATE()
    );


CREATE TABLE Pedidos (
        PedidoID INT PRIMARY KEY,
        ClienteID INT,
        DataPedido DATE,
        FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
    );

-- PRIMARY KEY: Identifica de forma única cada linha
-- NOT NULL: A coluna não pode ser nula
-- DEFAULT: Valor padrão para a coluna
-- UNIQUE: Garante que todos os valores da coluna sejam únicos
-- FOREIGN KEY: Define uma relação com outra tabela


-- INT            : Número inteiro
-- VARCHAR(n)     : Texto de tamanho variável (até n caracteres)
-- NVARCHAR(n)    : Texto Unicode (aceita caracteres especiais)
-- DATE           : Apenas a data
-- DATETIME       : Data e hora