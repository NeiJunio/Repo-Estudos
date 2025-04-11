-- Exercícios

-- 1-) Descobrir quais pessoas tem um cartão de credito registrado

     SELECT *
       FROM Person.Person PP
 INNER JOIN Sales.PersonCreditCard PC
         ON PP.BusinessEntityID = PC.BusinessEntityID

-- 19118 linhas (só mostras registros que existem nas duas tabelas)

     SELECT *
       FROM Person.Person PP
  LEFT JOIN Sales.PersonCreditCard PC
         ON PP.BusinessEntityID = PC.BusinessEntityID

-- 19972 linhas (mostra todas da esquerda, e se na direita não tiver uma correspondência, mostra null)