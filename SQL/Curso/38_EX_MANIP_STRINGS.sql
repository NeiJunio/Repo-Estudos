-- Exercícios

-- 1-) Converter nomes para maiúsculas (Person.Person)
SELECT TOP 3 FirstName, UPPER(FirstName) AS FirstNameUpper
  FROM Person.Person;
    -- Resultado:
        -- 'Ken' -> 'KEN'
        -- 'Terri' -> 'TERRI'
        -- 'Robert' -> 'ROBERT'


-- 2-) Extrair o primeiro nome (Person.Person)
SELECT TOP 3 FirstName + ' ' + LastName AS FullName,
       LEFT(FirstName + ' ' + LastName, CHARINDEX(' ', FirstName + ' ' + LastName + ' ') - 1) AS FirstNameExtracted
  FROM Person.Person;
    -- Resultado:
        -- 'Ken Sánchez' -> 'Ken',
        -- 'Terri Duffy' -> 'Terri'
        -- 'Robert Morales' -> 'Robert'


-- 3-) Mostrar os 4 primeiros do sobrenome (Person.Person)
SELECT TOP 3 LastName, LEFT(LastName, 4) AS LastNamePrefix 
  FROM Person.Person;
    -- Resultado:
        -- 'Sánchez' -> 'Sánc'
        -- 'Duffy' -> 'Duff'
        -- 'Morales' -> 'Mora'


-- 4-) Substituir traços por espaços em nomes de -- (Production.Product)
SELECT TOP 3 Name AS OriginalName, REPLACE(Name, '-', ' ') AS NameWithSpaces
  FROM Production.Product
 WHERE Name LIKE '%-%';
    -- Resultado:
        -- 'Mountain-Bikes' -> 'Mountain Bikes'
        -- 'Touring-Bikes' -> 'Touring Bikes'
        -- 'Handle-Bars' -> 'Handle Bars'


-- 5-) Nomes que começam com 'M' (Person.Person)
SELECT COUNT(*) AS Quantidade
  FROM Person.Person WHERE FirstName LIKE 'M%'; -- Resultado: 167


-- 6-) Nome completo com hífen (Person.Person)
SELECT TOP 3 FirstName, LastName, FirstName + ' - ' + LastName AS NomeCompletoComHifen
  FROM Person.Person;
    -- Resultado:
        -- 'Ken' + 'Sánchez' -> 'Ken - Sánchez'
        -- 'Terri' + 'Duffy' -> 'Terri - Duffy'
        -- 'Robert' + 'Morales' -> 'Robert - Morales'


-- 7-) Produtos com 'Mountain' no nome (Production.Product)
SELECT Name 
  FROM Production.Product 
WHERE Name LIKE '%Mountain%';
    -- Resultado:
        -- 'Mountain-100 Silver, 38'
        -- 'Mountain-200 Black, 46'
        -- 'HL Mountain Tire'


-- 8-) Contar o número de caracteres do primeiro nome (Person-- Person)
SELECT LEN('Terri'); -- Resultado: 5
SELECT LEN('Robert'); -- Resultado: 6
SELECT LEN('Gail'); -- Resultado: 4


-- 9-) Obter os 3 últimos caracteres do sobrenome (Person.Person)
SELECT RIGHT('Sánchez', 3); -- Resultado: ez
SELECT RIGHT('Duffy', 3); -- Resultado: ffy
SELECT RIGHT('Morales', 3); -- Resultado: les


-- 10-) Extrair parte do nome usando SUBSTRING (Person.Person)
SELECT SUBSTRING('Sánchez', 2, 3); -- Resultado: ánc
SELECT SUBSTRING('Duffy', 1, 2); -- Resultado: Du
SELECT SUBSTRING('Morales', 4, 3); -- Resultado: ale


-- 11-) Encontrar a posição de um caractere no nome (Person.Person)
SELECT CHARINDEX('e', 'Sánchez'); -- Resultado: 5
SELECT CHARINDEX('f', 'Duffy'); -- Resultado: 3
SELECT CHARINDEX('r', 'Robert'); -- Resultado: 3


-- 12-) Remover espaços em branco à esquerda e à direita (Person.Person)
SELECT LTRIM('   Ken'); -- Resultado: 'Ken'
SELECT RTRIM('Ken   '); -- Resultado: 'Ken'
SELECT LTRIM(RTRIM('   Ken   ')); -- Resultado: 'Ken'


-- 13-) Converter nomes para minúsculas (Person.Person)
SELECT LOWER('TERRI'); -- Resultado: terri
SELECT LOWER('ROBERT'); -- Resultado: robert
SELECT LOWER('GAIL'); -- Resultado: gail


-- 14-)  Usar CONCAT para nome completo (Person.Person) 
SELECT CONCAT('Ken', ' ', 'Sánchez'); -- Resultado: Ken Sánchez
SELECT CONCAT('Terri', ' ', 'Duffy'); -- Resultado: Terri Duffy
SELECT CONCAT('Robert', ' ', 'Morales'); -- Resultado: Robert Morales