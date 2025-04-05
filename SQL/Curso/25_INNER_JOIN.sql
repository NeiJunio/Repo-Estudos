-- 01/04/2025 -- 

-- INNER JOIN

/* 
    -> INNER JOIN, OUTER JOIN E SELF-JOIN

    -> serve para trazer para uma tabela um dado que existe em outra tabela. Ex: trazer o id do endereço (que só existe na tabela endereço) para a tabela clientes

    -> Primary Key é a chave que identifica única uma determinada tabela. Ex: ClientId identifica a tabela clientes, enquanto EnderecoId identifica a tabela endereço

    -> quando uma chave é utilixa em outra tabela, é se caracteriza como Foreign Key. Ex: na tabela clientes, o EnderecoId é um chave estrangeira

    -> SINTAXE:

    SELECT T1.coluna1_da_T1, T1.coluna2_da_T1, T2.coluna1_da_T2, T2.coluna2_da_T2, 
    FROM tabela1 T1
    INNER JOIN tabela2 T2 ON T2.chave_primaria = T1.chave_estrangeira(chave primaria da T2);

*/

    SELECT C.ClienteId, C.Nome, E.EnderecoId, E.rua, E.Cidade
      FROM Clientes C
INNER JOIN Enderecos E ON C.EnderecoId = E.EnderecoId;



/*
    Exercícios:

    1-) Encontrar o BusinessEntityId, FirstName, LastName, EmailAddress (Person.Person e Person.EmailAddress)
    2-) Encontrar ListPrice, Name (do produto), Name (da subcategoria) 
    3-) Juntar todas as colunas das tabelas Person.BusinessEntityAddress e Person.Address (essa junção chama-se produto cartesiano)
    4-) Encontrar BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber (Person.PhoneNumberType e Person.PersonPhone)
    5-) Encontrar AddressId, City, StateProvinceId, Name (do estado) (Person.stateProvince e Person.Address)

*/