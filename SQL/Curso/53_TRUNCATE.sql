-- 13/04/2025 --

--  TRUNCATE TABLE

/*
    ->  Remove todos os dados da tabela, mas mantém a estrutura da tabela.

    -> SINTAXE:

        TRUNCATE TABLE nome_da_tabela;

    -> Mais rápido que DELETE e não pode ser revertido se não estiver dentro de uma transação.
*/

-- Exemplo 1: Remover todos os dados da tabela sem excluir sua estrutura
TRUNCATE TABLE HistoricoLogins;

-- Exemplo 2: Truncar múltiplas tabelas (em comandos separados)
TRUNCATE TABLE Vendas;
TRUNCATE TABLE Estoque;