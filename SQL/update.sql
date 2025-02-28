-- 24/02/2025 --

--> Alterar o valor de um campo da tabela -------------------------------

UPDATE nome_tabela
   SET nome_coluna = novo_valor_do_campo
 WHERE nome_coluna = valor_coluna;

(essa é a condição)

	ex:
	UPDATE fornecedor
       SET estado='RJ'
	 WHERE cidade='Rio de Janeiro';

( altera o valor da coluna estado, cuja cidade seja Rio de Janeiro )