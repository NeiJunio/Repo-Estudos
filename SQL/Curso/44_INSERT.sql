-- 13/04/2025 --

-- INSERINDO DADOS COM O COMANDO INSERT INTO            |

/*
    -> O comando INSERT INTO é usado para adicionar novas linhas (registros) em uma tabela já existente.

    -> SINTAXE:
    
        INSERT INTO NomeDaTabela (Coluna1, Coluna2, ...)
                          VALUES (Valor1, Valor2, ...);

        Ou, omitindo os nomes das colunas (se seguir a ordem correta):

        INSERT INTO NomeDaTabela
        VALUES (Valor1, Valor2, ...);
*/

/*
    CREATE base para o INSERT:

    CREATE TABLE Clientes (
        ClienteID INT PRIMARY KEY,
        Nome NVARCHAR(100) NOT NULL,
        Email VARCHAR(100),
        DataCadastro DATE DEFAULT GETDATE()
    );
*/

INSERT INTO Clientes (ClienteID, Nome, Email)
              VALUES (1, 'João Silva', 'joao@email.com');


-- Insere um novo cliente na tabela Clientes.
-- O campo DataCadastro será preenchido automaticamente com a data atual, pois foi definido com DEFAULT GETDATE().


/*
    Exercícios:

    1-) Criar uma tabela com o nome Aula, contendo os campos Id como PK,e nome que recebe ate 200 caracteres. Após isso, inserir 3 registros
*/