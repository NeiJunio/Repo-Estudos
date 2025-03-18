-- Desafio Fundamentos

-- 1-) Quantos produtos temos cadastrados no sistema, que custam mais que 1500 dolares? (Production.Product)

SELECT COUNT (*)
  FROM Production.Product
 WHERE ListPrice > 1500


-- 2-) Quantas pessoas temos com o sobrenome que inicia com a letra P? (Person.Person)

SELECT COUNT (*)
  FROM Person.Person
 WHERE LastName LIKE 'P%'