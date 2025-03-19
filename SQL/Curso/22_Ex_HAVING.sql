-- Exercícios

-- 1-) Estamos querendo identificar as provincias (stateProvinceId) com o maior numero de cadastros em nosso sistema, então é preciso encontrar quais províncias (stateProvinceId) estão registradas no banco mais que 1000 vezes

  SELECT StateProvinceID, COUNT(StateProvinceID) AS Quantidade
    FROM Person.Address
GROUP BY StateProvinceID
  HAVING COUNT(StateProvinceID) > 1000