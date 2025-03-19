-- 18/03/2025 --

-- BETWEEN e NOT BETWEEN

/*
    -> BETWEEN Serve para encontrar um registro entre um valor mínimo e um valor máximo, englobando os extremos

    -> SINTAXE: 
        SELECT *
          FROM nome_da_tabela
         WHERE coluna BETWEEN valor_mínimo AND valor_máximo;

    -> NOT BETWEEN serve para encontrar registros que não estão entre o valor mínimo e o valor máximo especificados

    -> SINTAXE:
        SELECT *
          FROM nome_da_tabela
         WHERE coluna NOT BETWEEN valor_mínimo AND valor_máximo;

    -> OBS: pode ser usado com datas 
*/

SELECT *
  FROM Production.Product
 WHERE ListPrice BETWEEN 1000 AND 1500


SELECT *
  FROM Production.Product
 WHERE ListPrice NOT BETWEEN 1000 AND 1500


SELECT *
  FROM HumanResources.Employee
 WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'