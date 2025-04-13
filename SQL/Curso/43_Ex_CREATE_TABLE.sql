-- Exercícios:

-- 1-) Criar um banco chamado Youtube, e após isso, criar uma tabela com o nome Canal, com os campos CanalId, Nome, ContagemInscritos, DataCriação. (Id será PK, nome deve receber ate 150 caracteres, contagem deverá ser int e Data deverá ser DateTime)

CREATE TABLE Canal(
	CanalId INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	ContagemInscritos INT DEFAULT 0,
	DataCriacao DATETIME NOT NULL
);