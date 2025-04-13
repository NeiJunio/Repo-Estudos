-- 13/04/2025 --

-- DROP TABLE

/*
    -> Exclui completamente a tabela e seus dados do banco de dados.

    -> SINTAXE:
         DROP TABLE nome_da_tabela;
         
         ou

         DROP TABLE IF EXISTS nome_da_tabela;

*/

-- Exemplo 1: Excluir apenas uma tabela
DROP TABLE IF EXISTS Clientes;

-- Exemplo 2: Excluir múltiplas tabelas, se existirem
DROP TABLE IF EXISTS Pedidos, Produtos;