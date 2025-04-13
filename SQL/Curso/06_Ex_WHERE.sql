--   Exercícios

-- 1-) A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg, mas não mais que 700kg, para inspeção

SELECT Name
  FROM Production.Product
 WHERE Weight > 500 AND Weight < 700

 -- 2-) Foi pedido pelo marketing uma relação de todos os empregados(employees) que são casados (single= solteiros, married=casado) e são assalariados(salaried)


SELECT *
  FROM HumanResources.Employee
 WHERE MaritalStatus = 'M' AND SalariedFlag = 1


-- 3-) Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança (usar as tabelas Person.Person e tambem Person.EmailAddress)

SELECT *
  FROM Person.Person
 WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT *
  FROM Person.EmailAddress
 WHERE BusinessEntityID = 26