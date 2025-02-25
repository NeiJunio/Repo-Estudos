-- 24/02/2025 --

--> Alterar o nome de uma coluna --------------------------------------------------
	
    SP_RENAME 'nome_tabela.nome_coluna', 'novo_nome_coluna', 'column';


--> Renomear tabela ---------------------------------------------------------------
	
    SP_RENAME 'nome_atual','novo_nome'


--> mostrar informações da tabela -------------------------------------------------

	SP_HELP nome_tabela


--> Apagar um campo da tabela  ----------------------------------------------------
	
    ALTER TABLE nome_coluna DROP COLUMN nome_coluna;
