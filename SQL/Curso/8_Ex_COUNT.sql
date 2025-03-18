-- Exercícios:

-- 1-) Quantos produtos tem cadastrados na tabela produtos? (Production.Product) (R: 504)
SELECT COUNT(*)
  FROM Production.Product


-- 2-) Quantos tamanhos de produtos tem cadastrados na tabela produtos? (Size, Production.Product) (R: 211)
SELECT COUNT(Size)
  FROM Production.Product


-- 3-) Quantos tamanhos diferentes de produtos tem cadastrados na tabela produtos? (Size, Production.Product) (R: 18)
SELECT COUNT(DISTINCT Size)
  FROM Production.Product