-- 18/03/2025 --

-- LIKE E NOT LIKE

/*  
    -> LIKE Serve para buscar registros que correspondem parcilamente a algum critério

    -> O underline (_) serve para limitar quantos caracteres serão combinados após o texto informado

    -> Não é Case Sensitive

    -> SINTAXES:

    SELECT coluna1, coluna2
      FROM nome_da_tabela
      WHERE coluna1 LIKE 'começa_com%'


    SELECT coluna1, coluna2
      FROM nome_da_tabela
      WHERE coluna1 LIKE '%contém%'


    SELECT coluna1, coluna2
      FROM nome_da_tabela
      WHERE coluna1 LIKE '%termina_com'


    SELECT coluna1, coluna2
      FROM nome_da_tablea
      WHERE coluna1 LIKE 'exe_pl_'
      (específica que tem que ter 6 letras, sendo e,x,e,p,l fixas, podendo variar somente a quarta e a sexta letra)


    -> NOT LIKE Serve para buscar registros que NÃO correspondem parcilamente a algum critério

    -> SINTAXES:

    SELECT coluna1, coluna2
      FROM nome_da_tabela
      WHERE coluna1 NOT LIKE 'começa_com%'


    SELECT coluna1, coluna2
      FROM nome_da_tabela
      WHERE coluna1 NOT LIKE '%contém%'


    SELECT coluna1, coluna2
      FROM nome_da_tabela
      WHERE coluna1 NOT LIKE '%termina_com'
*/

SELECT *
  FROM Person.Person
 WHERE FirstName LIKE 'Ro%'


SELECT *
  FROM Person.Person
 WHERE FirstName LIKE '%ber%'


SELECT *
  FROM Person.Person
 WHERE FirstName LIKE '%to'


SELECT *
  FROM Person.Person
 WHERE FirstName LIKE '%is_'


SELECT *
  FROM Person.Person
 WHERE FirstName NOT LIKE 'Ro%'


SELECT *
  FROM Person.Person
 WHERE FirstName NOT LIKE '%ber%'


SELECT *
  FROM Person.Person
 WHERE FirstName NOT LIKE '%to'


SELECT *
  FROM Person.Person
 WHERE FirstName NOT LIKE '%is_'