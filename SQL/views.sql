-- 25/02/2025 --

--> Views são consultas pré-definidas que podem ser tratadas como tabelas virtuais. Elas são úteis para simplificar consultas complexas e melhorar a segurança dos dados.


--> Criar uma view  -------------------------------------------------------------
    CREATE VIEW nome_view AS
    SELECT coluna1, coluna2 
      FROM nome_tabela
     WHERE condicao;


--> Consultar uma view  ---------------------------------------------------------
    SELECT * FROM nome_view;
    
    
--> As views são utilizadas para restringir o acesso a determinadas colunas de uma tabela, reutilizar consultas complexas e facilitar a manutenção do banco de dados.