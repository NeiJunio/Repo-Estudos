-- Exercícios

-- 1-) Encontrar o BusinessEntityId, FirstName, LastName, EmailAddress    
    
    SELECT P.BusinessEntityID, P.FirstName, P.LastName, E.EmailAddress
      FROM Person.Person P
INNER JOIN Person.EmailAddress E ON E.BusinessEntityID = P.BusinessEntityID


-- 2-) Encontrar ListPrice, Name (do produto), Name (da subcategoria)

	SELECT Prod.ListPrice, Prod.Name, Psub.Name
	  FROM Production.Product Prod
INNER JOIN Production.ProductSubcategory Psub ON Psub.ProductSubcategoryID = Prod.ProductSubcategoryID


-- 3-) Juntar todas as colunas das tabelas Person.BusinessEntityAddress e Person.Address (essa junção chama-se produto cartesiano)

	SELECT * 
	  FROM Person.BusinessEntityAddress PB
INNER JOIN Person.Address PA ON PA.AddressID = PB.AddressID


--     4-) Encontrar BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber (Person.PhoneNumberType e Person.PersonPhone)


	SELECT PPF.BusinessEntityID, PPNT.Name, PPNT.PhoneNumberTypeID, PPF.PhoneNumber
	  FROM Person.PersonPhone PPF
INNER JOIN Person.PhoneNumberType PPNT ON PPNT.PhoneNumberTypeID = PPF.PhoneNumberTypeID


-- 5-) Encontrar AddressId, City, StateProvinceId, Name (do estado) (Person.stateProvince e Person.Address)

	SELECT PA.AddressID, PA.City, PS.StateProvinceID, PS.Name
	  FROM Person.Address PA
INNER JOIN Person.StateProvince PS ON PS.StateProvinceID = PA.StateProvinceID