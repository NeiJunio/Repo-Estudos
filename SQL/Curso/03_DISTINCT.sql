-- 12/03/2025 -- 

-- DISTINCT

/*
    - Usado para omitir os dados duplicados na tabela, retornando apenas os dados únicos. Ex: se um nome aparece varias vezes no banco, quando usado DISTINCT na query, esse nome vai retornar apenas uma vez



    -> SINTAXE:

        SELECT DISTINCT *
          FROM nome_da_tabela;
    
        ou

        SELECT DISTINCT coluna1, coluna2
          FROM nome_da_tabela; 
*/

-- Retornando dados duplicados (total de 19972 registros)
SELECT FirstName
  FROM Person.Person

-- Omitindo dados duplicados (total de 1018 registros)
SELECT DISTINCT FirstName
  FROM Person.Person



/*
    Exercícios:

    1-) Quantos nomes únicos existe na tabela Person.Person?
    2-) Quantos sobrenomesnomes únicos existe na tabela Person.Person?
*/