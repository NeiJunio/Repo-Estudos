-- Exercícios:

-- criar duas tabelas, e em seguida, apaga uma das tabelas, e apagar somente os registros da outra

CREATE TABLE TabelaDeTeste(
	Id INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Descricao VARCHAR(100) NOT NULL,
	Ativo VARCHAR(2) NOT NULL
);

CREATE TABLE Youtube(
	Id INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Categoria VARCHAR(200) NOT NULL,
	DataCriacao DATETIME NOT NULL
);

-- SOLUÇÃO:

DROP TABLE Youtube;

TRUNCATE TABLE TabelaDeTeste2;