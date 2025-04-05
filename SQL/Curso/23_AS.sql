-- 01/04/2025 -- 

-- AS

/*
    -> Usado para nomear colunas provisórias, melhorando a identificação

    -> SINTAXE:

        SELECT coluna AS nome_temporario_para_a_coluna
          FROM nome_da_tabela;

*/

SELECT TOP 10 ListPrice AS Preco
  FROM Production.Product


SELECT TOP 10 AVG (ListPrice) AS Média
    FROM Production.Product


/*
    Exercícios:
    
    1-) Encontrar o firstName e o lastName, trazendo as colunas com nome em português (Person.Person)
    2-) Encontrar o Product.Number da tabela production.product e trazer a coluna com o nome em português "Número do produto"
    3-) Encontrar o unitPrice da tabela sales.salesOrderDetail e renomeá-la para "Preço unitário"

*/