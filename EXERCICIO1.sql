CREATE DATABASE db_rh;
USE db_rg;
CREATE TABLE tb_rh(
id BIGINT auto_increment PRIMARY KEY,
nome_funcionario VARCHAR (255),
salario DECIMAL(10.2),
cargo VARCHAR(255),
ativo BOOLEAN
);

SELECT * FROM tb_rh;
INSERT INTO tb_rh(nome_funcionario, salario, cargo, ativo)VALUES("Carlos Alberto Ferreira", 5000.00, "Gerente", true);
INSERT INTO tb_rh(nome_funcionario, salario, cargo, ativo)VALUES("Andreza Barbosa", 3000.00, "Assistente Administrativo", true);
INSERT INTO tb_rh(nome_funcionario, salario, cargo, ativo)VALUES("Gisele Pereira", 2000.00, "Operadora de Máquina", true);
INSERT INTO tb_rh(nome_funcionario, salario, cargo, ativo)VALUES("Antonio José", 10000.00, "Relaçoes Públicas", true);
INSERT INTO tb_rh(nome_funcionario, salario, cargo, ativo)VALUES("Jorge Victhor", 1200.00, "Estagiário", true);

SELECT * FROM tb_rh WHERE salario > 2000;
SELECT * FROM tb_rh WHERE salario <  2000;

UPDATE tb_rh SET salario= 6000.00 WHERE id=2



