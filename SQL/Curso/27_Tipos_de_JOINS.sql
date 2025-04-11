-- 10/04/2025 -- 

-- TIPOS DE JOIN

/*
    Tabelas base    
    	
        A
    +-------+---------------+
    |   id  |     nome      |
    +-------+---------------+
    |    1  |    robô       |
    |    2  |    macaco     |
    |    3  |    samurai    |
    |    4  |    monitor    |
    +-------+---------------+

    	B
    +-------+---------------+
    |   id  |     nome      |
    +-------+---------------+
    |    1  |    espada     |
    |    2  |    robo       |
    |    3  |    mario      |
    |    4  |    samurai    |
    +-------+---------------+


    -- Criação da Tabela A
    CREATE TABLE A (
        id INT PRIMARY KEY,
        nome VARCHAR(50)
    );

    -- Inserção de dados na Tabela A
    INSERT INTO A (id, nome) VALUES
                  (1, 'robo'),
                  (2, 'macaco'),
                  (3, 'samurar'),
                  (4, 'monitor');

    -- Criação da Tabela B
    CREATE TABLE B (
        id INT PRIMARY KEY,
        nome VARCHAR(50)
    );

    -- Inserção de dados na Tabela B
    INSERT INTO B (id, nome) VALUES
                  (1, 'espada'),
                  (2, 'robo'),
                  (3, 'mario'),
                  (4, 'samurai');

*/


-- INNER JOIN
--> Retorna apenas os resultados que correspondem (existem) tanto na tabela A quanto na tabela B

    SELECT *
      FROM A	
INNER JOIN B
        ON A.nome = B.nome

/*retorna: 
    +-----+-------------+-----+--------------+
    |  id |   nome      |  id |   nome       |
    +-----+-------------+-----+--------------+
    |  1  |   robô      |  2  |   robô       |
    |  3  |   samurai   |  4  |  samurai     |
    +-----+-------------+-----+--------------+
*/


-- FULL OUTER JOIN
--> Retorna um conjunto de todos os registros correspondentes da TabelaA e TabelaB quando são iguais. Além diss, se não houver valores correspondentes, ele simplesmente irá preencher esse lado como null

      	 SELECT *
           FROM A	
FULL OUTER JOIN B
             ON A.nome = B.nome

/* Retorna: 
    +------+---------+------+---------+
    | id   |  nome   | id   |  nome   |
    +------+---------+------+---------+
    | 1    | robo    | 2    | robo    |
    | 2    | macaco  | NULL | NULL    |
    | 3    | samurai | 4    | samurai |
    | 4    | monitor | NULL | NULL    |
    | NULL | NULL    | 1    | espada  |
    | NULL | NULL    | 3    | mario   |
    +------+---------+------+---------+
*/


-- LEFT OUTER JOIN
--> retorna um conjunto de todos os registros da TabelaA, e além disso, os registros correspondentes (quando disponíveis) na tabelaB. Se não houver registros correspondentes, ele simplesmente vai preencher como null (tras todos do lado esquerdo, e os do lado direito que forem correspondentes. Se do lado direito tiver algum que não tem no lado esquerdo, não sera mostrados no exemplo, espada e mario não foram mostrados, pois não tem correspondência no lado esquerdo)

   SELECT *
     FROM A	
LEFT JOIN B
       ON A.nome = B.nome

/* Retorna:
    +----+---------+------+---------+
    | id |  nome   | id   |  nome   |
    +----+---------+------+---------+
    | 1  | robo    | 2    | robo    |
    | 2  | macaco  | NULL | NULL    |
    | 3  | samurai | 4    | samurai |
    | 4  | monitor | NULL | NULL    |
    +----+---------+------+---------+
*/


-- RIGHT OUTER JOIN
--> retorna um conjunto de todos os registros da TabelaB, e além disso, os registros correspondentes (quando disponíveis) na tabelaA. Se não houver registros correspondentes, ele simplesmente vai preencher como null (tras todos do lado direito, e os do lado esquerdo que forem correspondentes. Se do lado esquerdo tiver algum que não tem no lado direito, não sera mostrados no exemplo, macaco e monitor não foram mostrados, pois não tem correspondência no lado direito)

    SELECT *
      FROM A
RIGHT JOIN B
        ON A.nome = B.nome

/* Retorna:
    +------+---------+------+---------+
    | id   |  nome   | id   |  nome   |
    +------+---------+------+---------+
    | NULL | NULL    | 1    | espada  |
    | 1    | robo    | 2    | robo    |
    | NULL | NULL    | 3    | mario   |
    | 3    | samurai | 4    | samurai |
    +------+---------+------+---------+
*/


/*
    Exercícios:

    1-) Descobrir quais pessoas tem um cartão de credito registrado

*/