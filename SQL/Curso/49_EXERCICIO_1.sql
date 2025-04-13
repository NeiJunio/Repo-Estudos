-- Exerícios:

-- Crie uma nova tabela
-- Insira uma linha de dados nela
-- Insira 3 linhas de dados ao mesmo tempo
-- Crie uma segunda tabela
-- Insira uma linha de dado na nova tabela
-- Copie os dados da segunda tabela para a primeira

CREATE TABLE ExercicioInsert(
	Id INT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL
);

INSERT INTO ExercicioInsert(Id, Nome)
			         VALUES(1, 'Exemplo 1')


INSERT INTO ExercicioInsert(Id, Nome)
			         VALUES(2, 'Exemplo 2'),
				           (3, 'Exemplo 3'),
				           (4, 'Exemplo 4')

SELECT * FROM ExercicioInsert

CREATE TABLE ExercicioInsert2(
	Id INT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL
);

INSERT INTO ExercicioInsert2(Id, Nome)
			          VALUES(5, 'Exemplo 5 - vindo da tabela ExercicioInsert2')

INSERT INTO ExercicioInsert(Id, Nome)
SELECT * FROM ExercicioInsert2


-- Explicação no banco

CREATE TABLE Youtube(
	Id INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Categoria VARCHAR(200) NOT NULL,
	DataCriacao DATETIME NOT NULL
);

-- adicionando o campo Ativo com tipo BIT
ALTER TABLE Youtube
  ADD Ativo BIT

-- Alterando o tamanho de um campo
ALTER TABLE Youtube
ALTER COLUMN Categoria VARCHAR(250) NOT NULL

-- Alterando o nome de uma coluna
EXEC sp_RENAME 'Youtube.Nome', 'NomeCanal', 'COLUMN'

-- renomeando a tabela
EXEC sp_RENAME 'Youtube', 'Youtube2'