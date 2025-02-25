-- 24/02/2025 -- 

--> Selecione todos os campos de uma tabela
	
    SELECT * FROM nome_tabela


--> Selecione apenas as colunas de determinada tabela
	
    SELECT nome_coluna, nome_coluna FROM nome tabela


--> Selecione uma coluna de uma determinada tabela mediante uma condição
	
    SELECT nome_coluna FROM nome_tabela WHERE condicao (ex: preco > 5)


--> Selecione todos os campos cujo título comece com a letra ‘o’
	
    SELECT * FROM nome_tabela WHERE nome_coluna LIKE 'o%'


--> Selecione todos os campos cujo título termina com a letra ‘o’
	
    SELECT * FROM nome_tabela WHERE nome_coluna LIKE '%o'


--> Selecione todos os campos da tabela e ordena que uma coluna se organize em ordem decrescente
	
    SELECT * FROM nome_tabela
	ORDER BY nome_coluna DESC


--> Selecione todos os campos da tabela e ordena que uma coluna se organize em ordem crescente
	
    SELECT * FROM nome_tabela
	ORDER BY nome_coluna ASC