-- 07/05/2025 --


##  Criando a Tabela

CREATE TABLE Clientes (
        cliente_id INT IDENTITY(1,1) PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        telefone VARCHAR(20) NULL
    );

## Criando a Procedure com CRUD Completo

-> Esta procedure permite inserir, buscar, atualizar e deletar clientes com base em uma ação passada como parâmetro.

    CREATE PROCEDURE GerenciarCliente
            @acao        VARCHAR(10),  -- Pode ser 'INSERIR', 'LER', 'ATUALIZAR' ou 'DELETAR'
            @cliente_id  INT = NULL,   -- Obrigatório para 'LER', 'ATUALIZAR' e 'DELETAR'
            @nome        VARCHAR(100) = NULL, -- Obrigatório para 'INSERIR' e 'ATUALIZAR'
            @email       VARCHAR(100) = NULL, -- Obrigatório para 'INSERIR' e 'ATUALIZAR'
            @telefone    VARCHAR(20) = NULL   -- Opcional
        AS
        BEGIN
            SET NOCOUNT ON;

            IF @acao = 'INSERIR'
            BEGIN
                INSERT INTO Clientes (nome, email, telefone)
                VALUES (@nome, @email, @telefone);

                PRINT 'Cliente inserido com sucesso!';
            END
            ELSE IF @acao = 'LER'
            BEGIN
                IF @cliente_id IS NULL
                    SELECT * FROM Clientes;  -- Retorna todos os clientes
                ELSE
                    SELECT * FROM Clientes WHERE cliente_id = @cliente_id;  -- Retorna um cliente específico
            END
            ELSE IF @acao = 'ATUALIZAR'
            BEGIN
                UPDATE Clientes
                SET nome = @nome, email = @email, telefone = @telefone
                WHERE cliente_id = @cliente_id;

                PRINT 'Cliente atualizado com sucesso!';
            END
            ELSE IF @acao = 'DELETAR'
            BEGIN
                DELETE FROM Clientes WHERE cliente_id = @cliente_id;

                PRINT 'Cliente deletado com sucesso!';
            END
            ELSE
            BEGIN
                PRINT 'Ação inválida. Use INSERIR, LER, ATUALIZAR ou DELETAR.';
            END
        END;

## Como Usar a Procedure

-> Inserindo um Cliente

    EXEC GerenciarCliente @acao = 'INSERIR',
                          @nome = 'João Silva',
                          @email = 'joao@email.com',
                          @telefone = '11999999999';

##  Lendo Todos os Clientes

    EXEC GerenciarCliente @acao = 'LER';

## Lendo um Cliente Específico

    EXEC GerenciarCliente @acao = 'LER',
                          @cliente_id = 1;

## Atualizando um Cliente

    EXEC GerenciarCliente @acao = 'ATUALIZAR',
                          @cliente_id = 1,
                          @nome = 'João Pedro Silva',
                          @email = 'joaopedro@email.com',
                          @telefone = '11988888888';

##Deletando um Cliente

    EXEC GerenciarCliente @acao = 'DELETAR',
                          @cliente_id = 1;

/*
O que é uma Procedure no SQL Server?

Uma Stored Procedure no SQL Server é um conjunto de comandos SQL armazenados no banco de dados que pode ser executado sempre que necessário. Elas permitem encapsular lógica de negócios, reduzir a repetição de código e melhorar a performance das aplicações.
*/