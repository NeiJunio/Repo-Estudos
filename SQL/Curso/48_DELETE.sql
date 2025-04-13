-- 13/04/2025 --

-- EXCLUINDO DADOS COM O COMANDO DELETE

/*
    -> O comando DELETE é usado para remover registros de uma tabela.
    
    -> Sempre utilize a cláusula WHERE para evitar deletar todos os dados da tabela.

    -> SINTAXE:

        DELETE FROM NomeDaTabela
         WHERE condição;
*/

DELETE FROM Clientes
 WHERE ClienteID = 1;

-- Remove o cliente cujo ClienteID é igual a 1 da tabela Clientes.
-- Se você omitir o WHERE, **todos os registros da tabela serão apagados**.
  (⚠️ Use com cuidado!)