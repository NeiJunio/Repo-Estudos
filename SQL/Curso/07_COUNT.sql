-- 18/03/2025 --

-- COUNT

/*
    -> Serve para retornar o número de linhas que estão de acordo com a condição especificada

    -> SINTAXE:

        SELECT COUNT(*)
          FROM nome_da_tabela

        ou 

        SELECT COUNT(coluna1)
          FROM nome_da_tabela

    -> Pode conbinar com o DISTINCT:
        
        SELECT COUNT(DISTINCT coluna1)
          FROM nome_da_tabela
*/


SELECT COUNT(*)
  FROM Person.Person


SELECT COUNT(DISTINCT FirstName)
  FROM Person.Person

SELECT COUNT(LasttName)
  FROM Person.Person


/*
    Exercícios:

    1-) Quantos produtos tem cadastrados na tabela produtos? (Production.Product)
    2-) Quantos tamanhos de produtos tem cadastrados na tabela produtos? (Size, Production.Product)
    3-) Quantos tamanhos diferentes de produtos tem cadastrados na tabela produtos? (Size, Production.Product)
*/


