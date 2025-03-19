-- Desafio Fundamentos

-- 1-) Quantos produtos temos cadastrados no sistema, que custam mais que 1500 dolares? (Production.Product)

SELECT COUNT (*)
  FROM Production.Product
 WHERE ListPrice > 1500


-- 2-) Quantas pessoas temos com o sobrenome que inicia com a letra P? (Person.Person)

SELECT COUNT (*)
  FROM Person.Person
 WHERE LastName LIKE 'P%'


-- 3-) Em quantas cidades únicas estão cadastrados nossos clientes? (Person.Address)

SELECT COUNT(DISTINCT (City))
  FROM Person.Address


-- 4-) Quais são as cidades únicas cadastradas em nosso sistema? (Person.Address)

SELECT DISTINCT (City)
  FROM Person.Address


-- 5-) Quantos produtos vermelhos tem preço entre 500 a 1000 dolares? (Production.Product)

SELECT COUNT(*)
  FROM Production.Product
 WHERE Color = 'Red' 
   AND ListPrice BETWEEN 500 AND 1000


-- 6-) Quantos produtos cadastrados tem a palavra "road " no nome deles?

SELECT COUNT(*)
  FROM Production.Product
 WHERE Name LIKE '%road%'