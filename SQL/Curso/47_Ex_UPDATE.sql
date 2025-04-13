-- Exerícios

/*
-- 1-) com base na seguinte estrutura:

    CREATE TABLE Clientes (
        ClienteID INT PRIMARY KEY,
        Nome NVARCHAR(100) NOT NULL,
        Email VARCHAR(100),
        DataCadastro DATE DEFAULT GETDATE()
    );

    UPDATE Clientes
       SET Nome = 'João Pedro', Email = 'joaopedro@email.com'
     WHERE ClienteID = 1;

     altere o nome para Pedro João, e o email para pedrojoao2@email.com
    
*/

UPDATE Clientes
   SET Nome = 'Pedro João', Email = 'pedrojoao2@email.com'
 WHERE ClienteID = 1;