-- 18/03/2025 --

-- TOP

/*
    -> Serve para limitar a quantia de resultados vindos de um SELECT

    -> SINTAXE:

        SELECT TOP numero (*)
          FROM nome_da_tabela
        
        ex: retornando os 10 primeiros resultados

        SELECT TOP 10 * 
          FROM nome_da_tabela;
*/

SELECT TOP 10 *
  FROM Production.Product


SELECT TOP 10 *
  FROM Production.Product


/*
    Exercícios:

    1-) Retorne os 10 primeiros produtos da tabela Production.Product
    2-) Retorne os 20 primeiros registros da tabela Person.Person

*/