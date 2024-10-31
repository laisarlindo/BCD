USE loja_db;
-- exercicio 01
SELECT id_nf,id_item,cod_prod,valor_unit FROM tb_vendas
WHERE desconto IS NULL;
-- EXERCICIO 02
SELECT id_nf,id_item,cod_prod,valor_unit-(VALOR_UNIT*(DESCONTO/100)) AS valor_vendido FROM tb_vendas
WHERE desconto IS NOT NULL;

-- exercico 03
UPDATE tb_vendas
SET desconto = 0
WHERE desconto IS NULL;
SELECT*FROM tb_vendas;

-- exercicio 04 
SELECT id_nf, id_item, cod_prod,quantidade*valor_unit AS valor_total, desconto, valor_unit-(valor_unit*(desconto/100)) AS valor_vendido FROM tb_vendas;

-- exercico 05
SELECT id_nf, SUM(valor_unit*quantidade) AS valor_total FROM tb_vendas
GROUP BY id_nf
ORDER BY valor_total DESC;

-- exercicio 06
SELECT id_nf, SUM(valor_unit-(valor_unit*(desconto/100))) AS valor_vendido FROM tb_vendas
GROUP BY id_nf
ORDER BY valor_vendido DESC;

select * from tb_vendas;

-- exercicio 07
SELECT cod_prod,MAX(quantidade) FROM tb_vendas
GROUP BY cod_prod 
LIMIT 1;

-- exercicio 08
SELECT id_nf, cod_prod, COUNT(quantidade) AS quantidade FROM tb_vendas
WHERE quantidade>10
GROUP BY id_nf,cod_prod;

-- exercicio 09
SELECT id_nf, SUM(quantidade*valor_unit) AS valor_total FROM tb_vendas
WHERE quantidade*valor_unit >500
GROUP BY id_nf
ORDER BY id_nf DESC;

-- exercicio 10
SELECT cod_prod, AVG(desconto) AS media FROM tb_vendas
GROUP BY cod_prod;

-- exercicio 11
SELECT cod_prod, MIN(desconto) AS menor , MAX(desconto) AS maior, AVG(desconto) AS media FROM tb_vendas
GROUP BY cod_prod;

-- exercicio 12
SELECT id_nf,  COUNT(id_nf) AS qtd_itens FROM tb_vendas
WHERE quantidade >3
GROUP BY id_nf;





