-- 24/02/2025 -- 

--> Apagar um campo da tabela  -----------------------------------------
	
    ALTER TABLE nome_coluna DROP COLUMN nome_coluna;


--> Apagar todos os dados de uma linha com determinada condição  -------
	
    DELETE FROM nome_tabela WHERE condição;


--> Apagar dados de várias linhas com determinada condição  ------------
	
    DELETE FROM nome_tabela WHERE condição_comum_em_vários_campos;