-- 19/03/2025 --

-- GROUP BY

/*
    -> Serve para dividir o resultado da pesquisa em grupos, agrupas linhas baseado na semelhanças entre elas. Ex: posso pesquisar por pessoas, e agrupá-las com base na cidade em que moram

    -> SINTAXE: 

        SELECT coluna1, funcaoAgragacao(coluna2),...
          FROM nome_da_tabela
      GROUP BY coluna1
*/

--EX 1:
  SELECT SpecialOfferID, SUM(UnitPrice) AS Soma
    FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- buscou todos os SpecialOfferId, os que eram iguais ele agrupou, somando-os. Para cada valor distinto de SpecialOfferID, o SQL calculará a soma de UnitPrice.


--EX 2: Quantos de cada prouto foi vendido até hoje?

  SELECT ProductID, COUNT(ProductID) AS Contagem
    FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Aqui ele agrupou os dados pelo ProductID e retornou a quantidade de cada produto que foi vendido, ou seja, todos os registros que tinham o mesmo Id agoram ficaram em uma única linha, e foi contado quantas veses ele aparece no banco de dados


--EX 3: Quantos nomes de cada nome temos cadastrados no banco de dados?

  SELECT FirstName, COUNT(FirstName) AS Contagem
    FROM Person.Person
GROUP BY FirstName

-- pega todos os nome iguais, e coloca em apenas um registros, e na coluna ao lado, mostra o total de vezes que ele aparece
-- nesse caso, vamos supor que o nome Claudia aparece em 21 registros, então ele vai agroupar todos os nomes Claudia e uma unica linha Claudia, e a parte do COUNT vai fazer a contagem de quantos nomes Claudia existem no banco
-- Resumindo, agrupou todas as "Claudias" em uma única linha


-- Ex 4: Qual a média de preços dos produtos que são pratas/silver? (Production.Product)

  SELECT Color, AVG(ListPrice) AS Media
    FROM Production.Product
   WHERE Color = 'Silver'
GROUP BY Color

-- Soma-se e faz a média de todos os preços do produtos pratas



/*
    1-) Quantas pessoas tem o mesmo MiddleName? (agrupar por MiddleName)
    2-) Em média, qual a quantidade(quantity) que cada produto é vendido na loja?
    3-) Qual foram as 10 vendas que no total tiveram maiores valor de venda(LineTotal) por produto, do maior valor para o menor
    4-) Quantos produtos e qual a quantidade média de produtos cadastrados nas ordens de serviço(WorerOrder), agrupados por ProductId
    5-) Qual a quantidade(OrderQty) que cada produto é vendido na loja?
*/