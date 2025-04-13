-- 13/04/2025 --

-- EXPLICAÇÃO E SINTAXE DO ALTER TABLE NO SQL SERVER

/*

    - O comando ALTER TABLE é utilizado para modificar a    estrutura de uma tabela existente.
    - Com ele, é possível:
       - Adicionar colunas
       - Modificar o tipo de uma coluna
       - Renomear colunas (usando sp_rename)
       - Adicionar ou remover restrições (como chave primária, estrangeira, etc)
       - Excluir colunas


*/


-- 1. ADICIONAR UMA NOVA COLUNA
ALTER TABLE NomeDaTabela
ADD NomeDaColuna TipoDeDados;

-- Exemplo:
- ALTER TABLE Funcionarios
- ADD Email NVARCHAR(100);


-- 2. MODIFICAR O TIPO DE UMA COLUNA EXISTENTE
ALTER TABLE NomeDaTabela
ALTER COLUMN NomeDaColuna NovoTipoDeDados;

-- Exemplo:
ALTER TABLE Funcionarios
ALTER COLUMN Nome NVARCHAR(200);


-- 3. RENOMEAR UMA COLUNA
EXEC sp_rename 'NomeDaTabela.NomeAntigo', 'NomeNovo', 'COLUMN';

-- Exemplo:
- EXEC sp_rename 'Funcionarios.Telefone', 'TelefoneCelular', 'COLUMN';


-- 4. ADICIONAR UMA CONSTRAINT (como chave primária ou estrangeira)
ALTER TABLE NomeDaTabela
ADD CONSTRAINT NomeDaConstraint TipoConstraint (Coluna);

-- Exemplo de chave estrangeira:
ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Clientes
FOREIGN KEY (ClienteId) REFERENCES Clientes(Id);


-- 5. REMOVER UMA COLUNA
ALTER TABLE NomeDaTabela
DROP COLUMN NomeDaColuna;

-- Exemplo:
ALTER TABLE Funcionarios
DROP COLUMN DataAntiga;


-- 6. REMOVER UMA CONSTRAINT
ALTER TABLE NomeDaTabela
DROP CONSTRAINT NomeDaConstraint;

-- Exemplo:
ALTER TABLE Pedidos
DROP CONSTRAINT FK_Pedidos_Clientes;



-- EXEMPLOS PRÁTICOS REAIS

-- 1. ADICIONAR UMA NOVA COLUNA
ALTER TABLE Clientes
ADD DataNascimento DATE;

-- 2. MODIFICAR O TIPO DE UMA COLUNA
ALTER TABLE Clientes
ALTER COLUMN Nome NVARCHAR(150);

-- 3. RENOMEAR UMA COLUNA
EXEC sp_rename 'Clientes.Nome', 'NomeCompleto', 'COLUMN';

-- 4. ADICIONAR UMA CONSTRAINT (chave estrangeira)
ALTER TABLE Pedidos
ADD CONSTRAINT FK_Pedidos_Clientes
FOREIGN KEY (ClienteId) REFERENCES Clientes(Id);

-- 5. REMOVER UMA COLUNA
ALTER TABLE Clientes
DROP COLUMN DataNascimento;

-- 6. REMOVER UMA CONSTRAINT
ALTER TABLE Pedidos
DROP CONSTRAINT FK_Pedidos_Clientes;

-- DICA:
-- Use o comando abaixo para consultar a estrutura de uma tabela:
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'NomeDaTabela';



