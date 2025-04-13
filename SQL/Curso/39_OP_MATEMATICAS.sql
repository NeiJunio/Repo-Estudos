-- 13/04/2025 --

-- OPERAÇÕES MATEMÁTICAS EM SQL SERVER

/*
    -> SINTAXES:

        ADIÇÃO (+): Soma dois valores numéricos.
            SELECT valor1 + valor2 AS Soma;  

        SUBTRAÇÃO (-): Subtrai um número de outro.
            SELECT valor1 - valor2 AS Subtracao;

        MULTIPLICAÇÃO (*): Multiplica dois valores
            SELECT valor1 * valor2 AS Multiplicacao

        DIVISÃO (/): Divide um número pelo outro
            SELECT valor1 / valor2 AS Divisao;

        MÓDULO (%): Retorna o resto da divisão.
            SELECT valor1 % valor2 AS Resto
    

    -> FUNÇÕES MATEMÁTICAS
        ABS(valor) — valor absoluto  
            SELECT ABS(-valor) AS ValorAbsoluto;

        POWER(base, expoente) — potência  
            SELECT POWER(valorBase, valorExpoente) AS Potencia;  

        SQRT(valor) — raiz quadrada  
            SELECT SQRT(valor) AS RaizQuadrada;

        ROUND(valor, casasDecimais) — arredondar  
            SELECT ROUND(valor, casasDecimais) AS Arredondado;

        FLOOR(valor) — arredonda para baixo  
            SELECT FLOOR(valor) AS ArredondaBaixo;  

        CEILING(valor) — arredonda para cima  
            SELECT CEILING(valor) AS ArredondaCima;  

*/


OPERAÇÕES MATEMÁTICAS:

SELECT UnitPrice + LineTotal
  FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal
  FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal
  FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal
  FROM Sales.SalesOrderDetail

SELECT UnitPrice + LineTotal
  FROM Sales.SalesOrderDetail

-- média
SELECT AVG(LineTotal)
  FROM Sales.SalesOrderDetail

-- soma
SELECT SUM(LineTotal)
  FROM Sales.SalesOrderDetail

-- valor mínimo
SELECT MIN(LineTotal)
  FROM Sales.SalesOrderDetail

-- valor máximo
SELECT MAX(LineTotal)
  FROM Sales.SalesOrderDetail

-- arredondamento
SELECT Round(LineTotal,2) -- (valor, numero_de_casas_decimais)
  FROM Sales.SalesOrderDetail

-- raiz quadrada
SELECT SQRT(LineTotal)
  FROM Sales.SalesOrderDetai
