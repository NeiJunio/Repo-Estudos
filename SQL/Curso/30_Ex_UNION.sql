-- Exercícios:

-- 1-) Selecionar o Name o ProductNumber em um SELECT onde o ProductNumber comece com B, e unir com um SELECT que seleciona o Name e ProductNumber, onde o Name começa com B (tabela Production.Product)


 SELECT top 10 Name, ProductNumber 
   FROM Production.Product 
  WHERE ProductNumber LIKE 'B%'
  UNION 
 SELECT top 10  Name, ProductNumber 
   FROM Production.Product 
  WHERE Name LIKE 'B%'


/* Retorna:
    +----------------------------+----------------+
    | Name                       | ProductNumber  |
    +----------------------------+----------------+
    | BB Ball Bearing            | BE-2349        |
    | Bearing Ball               | BA-8327        |
    | Bike Wash - Dissolver      | CL-9009        |
    | Blade                      | BL-2036        |
    | Headset Ball Bearings      | BE-2908        |
    | Road-150 Red, 44           | BK-R93R-44     |
    | Road-150 Red, 48           | BK-R93R-48     |
    | Road-150 Red, 52           | BK-R93R-52     |
    | Road-150 Red, 56           | BK-R93R-56     |
    | Road-150 Red, 62           | BK-R93R-62     |
    | Road-450 Red, 58           | BK-R68R-58     |
    +----------------------------+----------------+

    - Seleciona os 10 primeiros produtos cujo ProductNumber começa com a letra B.
    - Seleciona os 10 primeiros produtos cujo Name começa com a letra B.
    - Junta os resultados das duas consultas.
    - Remove duplicados automaticamente. Ou seja, se um mesmo registro aparecer nos dois    resultados, ele só aparecerá uma vez na saída final.
*/