-- 12/03/2025 -- 

-- WHERE

/*
    -> Estabelece determinadas condições com forma de filtrar resultados
    -> As condiç~eos podem ser combinados, por meio dos seguintes operadores lógicos:

    OPERADOR    -   DESCRIÇÃO
        =           IGUAL
        <           MENOR QUE
        >           MAIOR QUE
        <=          MENOR OU IGUAL A
        >=          MAIOR OU IGUAL A
        <>          DIFERENTE DE
        AND         E
        OR          OU
        

    -> SINTAXE:

        SELECT *
          FROM nome_da_tabela;
         WHERE condição;

        ou

        SELECT coluna1, coluna2
          FROM nome_da_tabela;
         WHERE condição; 
*/


SELECT *
  FROM Person.Person
 WHERE LastName = 'miller'


SELECT *
  FROM Person.Person
 WHERE LastName = 'miller' AND FirstName= 'anna'


SELECT *
  FROM Production.Product
WHERE Color= 'blue' OR Color = 'black'


SELECT *
  FROM Production.Product
 WHERE Color <> 'red'


SELECT *
  FROM Production.Product
WHERE ListPrice > 1500


SELECT *
  FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000



/*
    Exercícios:

    1-) A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg, mas não mais que 700kg, para inspeção

    2-) Foi pedido pelo marketing uma relação de todos os empregados(employees) que são casados (single= solteiros, married=casado) e são assalariados(salaried)

    3-) Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança (usar as tabelas Person.Person e tambem Person.EmailAddress)
*/