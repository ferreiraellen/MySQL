CREATE DATABASE db_calmoaromas;
USE db_calmoaromas;

CREATE TABLE tb_calmoaromas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255)
);


CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
quantidade INT,
aroma VARCHAR(255),
valor DECIMAL (8,2),
tipo VARCHAR(255),
calmoaromas_id BIGINT,
-- esse categoria id está vindo da tabela de categoria, não cria um nova, referenciando o id categoria 

-- referenciar qual tabela de referencia, relacionar tb de produto com tb de categorias
FOREIGN KEY(calmoaromas_id)REFERENCES  tb_calmoaromas(id)
);

SELECT * FROM tb_calmoaromas;

INSERT INTO tb_calmoaromas(categoria)VALUES("Vela Artesanal Tradicional");
INSERT INTO tb_calmoaromas(categoria)VALUES("Vela Artesanal - Busto");
INSERT INTO tb_calmoaromas(categoria)VALUES("Home Spray");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto, quantidade, aroma, valor, tipo, calmoaromas_id)VALUES("Calmô Vela", 2, "Hortelã e Canela", 39.90, "Vela Aromática Tradicional", 1);
INSERT INTO tb_produtos(nome_produto, quantidade, aroma, valor, tipo, calmoaromas_id)VALUES("Calmô Vela", 1, "Lavanda", 39.90, "Vela Aromática - Busto", 2);
INSERT INTO tb_produtos(nome_produto, quantidade, aroma, valor, tipo, calmoaromas_id)VALUES("Calmô Home Spray", 1, "Alecrim", 45.90, "Home Spray", 3);

-- para juntar as informações em comum das duas tabelas (o id), não insere nada no banco, é apenas para visulização.
SELECT * FROM tb_produtos INNER JOIN tb_calmoaromas ON tb_calmoaromas.id = tb_produtos.id;

-- para trazer apenas uma categoria específica da tabela
SELECT * FROM tb_produtos INNER JOIN tb_calmoaromas ON tb_produtos.calmoaromas_id = tb_calmoaromas.id WHERE tb_calmoaromas.id =2;






