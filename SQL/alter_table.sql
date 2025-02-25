-- 24/02/2025 -- 

--> Adicionar coluna em uma tabela, com nome e tipo de dado  ----------------------
	
    ALTER TABLE nome_tabela ADD nome_nova_coluna tipo_dado;


--> Alterar o tipo de dados de uma coluna em determinada tabela  ------------------
	
    ALTER TABLE nome_tabela ALTER COLUMN nome_coluna novo_tipo_dado;


--> Alterar o nome de uma coluna --------------------------------------------------
	
    SP_RENAME 'nome_tabela.nome_coluna', 'novo_nome_coluna', 'COLUMN';


--> Renomear tabela ---------------------------------------------------------------
	
    SP_RENAME 'nome_atual','novo_nome'