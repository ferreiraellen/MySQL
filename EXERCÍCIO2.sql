-- usar "db" para banco de dadods e "tb" para tabelas
/*
COMENTÁRIO DE BLOCOS
*/

-- comando para criar banco de dados 
CREATE DATABASE db_lojinha;
-- usar o ultimo banco de dados criado
USE db_lojinha;
CREATE TABLE tb_produtos(
-- identificador BigInt tipo de identificador inteiro, "auto_increment" para o sql criar identificadores diferentes para cada dado inserido
id BIGINT auto_increment,
-- "vachar" é o tipo da variável nome_produto; sempre será necessário passar a quantidade de letras que voc~e quer que tenha nessa variável
nome_produto varchar(255),
valor DECIMAL (8,2),
pagamento_cartao BOOLEAN,

-- necessário a chave primária para criação da 
primary key(id)
);

-- comando para visualização de tabela *= tudo; FROM= referencia qual tabela + nome da tabela criada
SELECT * FROM tb_produtos;
-- INSERINDO DADOS NA TABELA, INTO=DENTRO, "INSIRA DENTRO DA TABELA", VALUE = PASSA OS VALORES QUE VC QUER INSERIR
INSERT INTO tb_produtos(nome_produto, valor, pagamento_cartao)VALUE("CAMISETA", 25.59,TRUE );