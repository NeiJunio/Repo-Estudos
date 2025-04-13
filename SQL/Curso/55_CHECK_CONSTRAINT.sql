-- 13/04/2025 -- 

-- CHECK CONSTRAINT 

/*
    -> A cláusula CHECK é usada para impor uma condição lógica em uma ou mais colunas de uma tabela. Essa condição precisa ser satisfeita para que os dados sejam inseridos ou atualizados. Caso contrário, o SQL Server irá gerar um erro.

*/

-- EXEMPLO 1: Usando CHECK na criação da tabela

CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT,
    Sexo TINYINT, -- 0 = Masculino, 1 = Feminino
    Salario DECIMAL(10,2),

    -- Restrições CHECK
    CONSTRAINT chk_idade CHECK (Idade >= 18),
    CONSTRAINT chk_sexo CHECK (Sexo IN (0, 1)),
    CONSTRAINT chk_salario CHECK (Salario >= 1412.00)
);

-- Descrição das restrições:
-- chk_idade: impede que a idade seja menor que 18.
-- chk_sexo: garante que o valor de Sexo seja apenas 0 ou 1.
-- chk_salario: garante que o salário seja no mínimo 1412.00 (ex: salário mínimo).

-- Exemplo de tentativa inválida (gera erro):
INSERT INTO Funcionarios (ID, Nome, Idade, Sexo, Salario)
                  VALUES (1, 'João Silva', 16, 0, 2000.00); -- ERRO por causa da idade < 18


-- EXEMPLO 2: CHECK diretamente na definição da coluna

CREATE TABLE CarteiraMotorista (
    Id INT NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Idade INT CHECK (Idade >= 18)
);

-- Neste exemplo, a restrição CHECK é aplicada diretamente na coluna Idade, garantindo que apenas valores maiores ou iguais a 18 possam ser inseridos.

-- Exemplo de inserção válida:
INSERT INTO CarteiraMotorista (Id, Nome, Idade)
                       VALUES (1, 'Carlos Silva', 25);

-- Exemplo de inserção inválida:
INSERT INTO CarteiraMotorista (Id, Nome, Idade)
                       VALUES (2, 'João Neto', 16); -- ERRO por causa do CHECK (Idade >= 18)

-- Dica: você também pode nomear a constraint usando:
-- Idade INT CONSTRAINT chk_idade_minima CHECK (Idade >= 18)
