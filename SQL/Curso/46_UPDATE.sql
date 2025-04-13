-- 13/04/2025 --

-- ATUALIZANDO DADOS COM O COMANDO UPDATE

/*
    -> O comando UPDATE é usado para modificar os dados existentes em uma tabela.
    -> É importante sempre usar a cláusula WHERE para evitar atualizar todos os registros.

    -> SINTAXE:

        UPDATE NomeDaTabela
           SET Coluna1 = NovoValor1,
               Coluna2 = NovoValor2,
               ...
         WHERE condição;

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


UPDATE Clientes
   SET Nome = 'João Pedro', Email = 'joaopedro@email.com'
 WHERE ClienteID = 1;


-- Atualiza o nome e o email do cliente cujo ClienteID é igual a 1.
-- A cláusula WHERE garante que apenas esse registro será modificado.


/*
    Exerícios:

    1-) com base na seguinte estrutura:

    CREATE TABLE Clientes (
        ClienteID INT PRIMARY KEY,
        Nome NVARCHAR(100) NOT NULL,
        Email VARCHAR(100),
        DataCadastro DATE DEFAULT GETDATE()
    );

    UPDATE Clientes
       SET Nome = 'João Pedro', Email = 'joaopedro@email.com'
     WHERE ClienteID = 1;

     altere o email para pedrojoao2@email.com
*/