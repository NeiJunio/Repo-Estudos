-- 18/03/2025 --

-- ORDER BY

/*
    -> Permite ordenar os resultados com base em alguma colulna, e em ordem Crescente (ASC) ou Decrescente (DESC)

    -> SINTAXE:

        SELECT coluna1, coluna2
          FROM nome_da_tabela
      ORDER BY coluna_n [ASC | DESC];

    -> Pode combinar a ordenação por mais de uma coluna:

          SELECT coluna1, coluna2
            FROM nome_da_tabela
        ORDER BY coluna1 ASC, coluna2 DESC

    -> Embora não seja aconselhado (em alguns bancos de dados pode não funcionar), também posso ordenar por colunas que não estão sendo selecionadas:

          SELECT coluna1, coluna2
            FROM nome_da_tabela
        ORDER BY coluna3 DESC

*/

  SELECT *
    FROM Person.Person
ORDER BY FirstName ASC


  SELECT *
    FROM Person.Person
ORDER BY FirstName ASC, LastName DESC

  SELECT FirstName, LastName
    FROM Person.Person
ORDER BY MiddleName ASC



/*
    Exercícios:

    1-) Obtenha o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato 
    2-) Obtenha o nome e o numero dos produtos que tem o ProductId entre 1~4

*/