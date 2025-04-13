-- Exercícios

-- Criar uma tabela com 3 colunas
-- alterar o tipo de uma coluna
-- renomar uma coluna
-- renomear a tabela

CREATE TABLE TabelaDeTeste(
	Id INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Descricao VARCHAR(100) NOT NULL,
	Ativo VARCHAR(2) NOT NULL
);


-- Alterando o tamanho de um campo
ALTER TABLE TabelaDeTeste
ALTER COLUMN Ativo BIT NOT NULL

-- Alterando o nome de uma coluna
EXEC sp_RENAME 'TabelaDeTeste.Nome', 'NomeAlterado', 'COLUMN'

-- renomeando a tabela
EXEC sp_RENAME 'TabelaDeTeste', 'TabelaDeTeste2'
