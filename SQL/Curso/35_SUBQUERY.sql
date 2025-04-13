-- 13/04/2025 --

-- SUBQUERY

/*
    -> Uma subquery (ou subconsulta) é uma consulta SQL que está dentro de outra consulta principal.

    -> Ela retorna valores que são usados para filtrar, comparar ou manipular os dados da consulta externa.
    
    -> Permite montar queries mais poderosas e dinâmicas.
    
    -> Torna consultas complexas mais organizadas e fáceis de entender.
    
    -> Evita a necessidade de fazer múltiplas consultas separadas.

    -> TIPOS DE SUBQUERY:
        --> Escalar: retorna apenas um único valor.
        --> De linha/coluna: retorna um ou mais valores para uso com IN, EXISTS, = ANY, etc.
        --> Correlacionada: depende de dados da query principal (avançada).

    -> QUANDO USAR SUBQUERIES?
        --> Quando o resultado de uma consulta depende de outra.
        --> Quando deseja aplicar filtros com base em cálculos (como média, soma, etc).
        --> Quando JOINs não são aplicáveis ou tornam a consulta mais complexa.
*/

-- Exemplo 1: Produtos com preço acima da média
-- Objetivo: listar todos os produtos cujo preço está acima da média de todos os produtos.

SELECT *
  FROM Production.Product
 WHERE ListPrice > (
       SELECT AVG(ListPrice)
         FROM Production.Product
       )

-- Exemplo 2: Funcionários com cargo de 'Design Engineer' (Usando subquery):

SELECT FirstName
  FROM Person.Person
 WHERE BusinessEntityID IN (
       SELECT BusinessEntityID
         FROM HumanResources.Employee 
        WHERE JobTitle = 'Design Engineer'
       )

-- Exemplo 2: Funcionários com cargo de 'Design Engineer' (Usando JOIN):

SELECT P.FirstName
  FROM Person.Person P
  JOIN HumanResources.Employee E ON P.BusinessEntityID = E.sinessEntityID
 WHERE E.JobTitle = 'Design Engineer'


/*
    Exercícios:

    1-) Retorne todos os endereços que estão no estado de Alberta.

*/





