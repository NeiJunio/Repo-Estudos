-- Exercícios

-- 1-) Criar uma tabela com o nome Aula, contendo os campos Id como PK,e nome que recebe ate 200 caracteres. Após isso, inserir 3 registros

CREATE TABLE Aula(
	Id INT PRIMARY KEY,
	Nome VARCHAR(200)
);

INSERT INTO Aula(Id, Nome)
          VALUES(1, 'Aula 1'),
		        (2, 'Aula 2'),
		        (3, 'Aula 3')