/*
    Exercício:

    1-) Quantos nomes únicos existe na tabela person.Person?
    2-) Quantos sobrenomesnomes únicos existe na tabela person.Person?
*/

-- 1-) 
SELECT DISTINCT FirstName
  FROM Person.Person

-- 2-) 
SELECT DISTINCT LastName
  FROM Person.Person