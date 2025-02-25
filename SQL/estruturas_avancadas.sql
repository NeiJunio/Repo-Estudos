-- 25/02/2025 --

--> Criar uma chave primária  ---------------------------------------------
    
    ALTER TABLE nome_tabela ADD CONSTRAINT pk_nome PRIMARY KEY (nome_coluna);

    
--> Criar uma chave estrangeira  -------------------------------------------

    ALTER TABLE nome_tabela ADD CONSTRAINT fk_nome FOREIGN KEY (nome_coluna) REFERENCES outra_tabela(coluna_referenciada);
