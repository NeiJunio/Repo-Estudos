-- 12/03/2025 -- 

-- SELECT


/*
   -> Usado junto com o GRUPO BY para filtrar resultados de um agrupamento
   -> Especifica um critério de pesquisa para um grupo ou uma agregação
   -> É usado para filtrar os resultados de uma consulta após a aplicação de funções de agregação
   -> Ele funciona de maneira semelhante ao WHERE, mas enquanto o WHERE filtra os registros antes da agregação, o HAVING filtra os grupos de dados depois da agregação.

   -> Suponha que você tenha uma tabela chamada vendas:

    +--------------------------------+
    | id_venda	| vendedor	| valor  |
    +-----------+-----------+--------+
    |     1	    |  João	    |  500   |
    |     2	    |  Maria    |  700   |
    |     3	    |  João	    |  300   |
    |     4	    |  Pedro    | 1000   |
    |     5	    |  Maria    |  400   |
    +--------------------------------+

    Agora, queremos saber quais vendedores tiveram um total de vendas maior que 800:

      SELECT vendedor, SUM(valor) AS total_vendas
        FROM vendas
    GROUP BY vendedor
      HAVING SUM(valor) > 800;

    Isso irá retornar:

    +------------+-------------+
    | vendedor   | total_vendas|
    +------------+-------------+
    |   Maria	 |     1100    |
    |   Pedro	 |     1000    |
    +------------+-------------+


    -> SINTAXE:

      SELECT coluna, funcaoAgragacao(coluna) AS nome_temporario_nova_coluna
        FROM nome_da_tabela
    GROUP BY coluna
      HAVING condicao;

    -> É basicamente um WHERE nos dados agrupados
    -> WHERE é aplicado antes dos dados serem agrupados, enquanto o HAVING é aplicado depois dos dados serem agrupados
*/

-- Quais nomes tem ocorrêcencia maior que 20 vezes no sistema:

  SELECT FirstName, COUNT(FirstName) AS Qtd
    FROM Person.Person
GROUP BY FirstName
  HAVING COUNT(FirstName) > 20

  -- vou selecionar o FirstName, fazendo a contagem deles, e agrupando os registros repetidos em linhas unicas, junto com o total de repetição
  -- após agrupar, uso o HAVING para filtrar apenas os que tiveram total de repetição maior que 20
  -- Sem a claúsula HAVING, o sistema iria retornar todos os nomes que tem no sistema agrupanando dos os registros iguais em uma única linha. Exemplo: todos os "João" iriam ficar em uma única linha, junto com o total de repetição



-- Quais produtos que no total de vendas teve entre 162k e 500k

  SELECT ProductID,  SUM(LineTotal) AS Total
    FROM Sales.SalesOrderDetail
GROUP BY ProductID
  HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

  -- Primeiro faço o agrupamento dos produtos junto com seu total de vendas, por exemplo, o produto A teve um total de vendas de 100k...
  -- Depois uso o HAVING para filtrar apenas os produtos que tiveram um total de vendas entre 162k e 500k



-- Quais nomes tem ocorrência maior que 10 vezes, porém somente onde o título é 'Mr.'

  SELECT FirstName, COUNT(FirstName) AS Qtd
    FROM Person.Person
   WHERE Title = 'Mr.' 
GROUP BY FirstName
  HAVING COUNT(FirstName) > 10



/*
    Exercícios:

    1-) Estamos querendo identificar as provincias (stateProvinceId) com o maior numero de cadastros em nosso sistema, então é preciso encontrar quais províncias (stateProvinceId) estão registradas no banco mais que 1000 vezes
    2-) Sendo que se trata  de uma multinacional, os gentes querem saber quais produtos (productId) não estão trazendo, em média, no mínimo 1 milhão em total de vendas (lineTotal) (tabela sales.salesOrderDetail)

*/