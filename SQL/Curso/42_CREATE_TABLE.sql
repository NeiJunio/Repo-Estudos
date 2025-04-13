-- 13/04/2025 -- 

-- CREATE TABLE

/*
    -> No SQL Server, a criação de tabelas é feita com o comando CREATE TABLE.
    -> Esse comando define o nome da tabela e as colunas que ela vai conter, especificando o tipo de dado de cada uma.

    -> SINTAXE:
    
        CREATE TABLE NomeDaTabela (
            NomeColuna1 TipoDeDado [restrições],
            NomeColuna2 TipoDeDado [restrições],
            ...
        );

    -> TIPOS DE DADOS COMUNS: 
        - INT            : Número inteiro
        - VARCHAR(n)     : Texto de tamanho variável (até n caracteres)
        - NVARCHAR(n)    : Texto Unicode (aceita caracteres especiais)
        - DATE           : Apenas a data
        - DATETIME       : Data e hora

    -> RESTRIÇÕES: 
        - PRIMARY KEY : Identifica de forma única cada linha
        - NOT NULL    : A coluna não pode ser nula
        - DEFAULT     : Valor padrão para a coluna
        - UNIQUE      : Garante que todos os valores da coluna sejam        únicos
        - FOREIGN KEY : Define uma relação com outra tabela
*/

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome NVARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    DataCadastro DATE DEFAULT GETDATE()
);

-- ClienteID INT PRIMARY KEY: Cria a coluna ClienteID como inteiro e define como chave primária.

-- Nome NVARCHAR(100) NOT NULL: Cria a coluna Nome com até 100 caracteres, que não pode ser nula.

-- Email VARCHAR(100): Coluna opcional para email com até 100 caracteres.

-- DataCadastro DATE DEFAULT GETDATE(): Cria a coluna com tipo DATE e valor padrão como a data atual.

CREATE TABLE Pedidos (
        PedidoID INT PRIMARY KEY,
        ClienteID INT,
        DataPedido DATE,
        FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
    );

/*
    Exercícios:

    1-) Criar um banco chamado Youtube, e após isso, criar uma tabela com o nome Canal, com os campos CanalId, Nome, ContagemInscritos, DataCriação. (Id será PK, nome deve receber ate 150 caracteres, contagem deverá ser int e Data deverá ser DateTime)

*/