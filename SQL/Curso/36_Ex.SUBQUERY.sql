-- Exercícios

-- 1-) Retorne todos os endereços que estão no estado de Alberta.

SELECT *
  FROM Person.Address
 WHERE StateProvinceID IN (
       SELECT StateProvinceID
         FROM Person.StateProvince
        WHERE Name = 'Alberta'
       )