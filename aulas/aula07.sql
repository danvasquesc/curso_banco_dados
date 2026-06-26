use DB_T04301_DAN_VASQUES;

-- CRIANDO AS TABELAS
CREATE TABLE tb_clientes_pizzaria ( 
 id INT PRIMARY KEY, 
 nome VARCHAR(100), 
 telefone VARCHAR(20) 
); 

CREATE TABLE tb_produtos_pizzaria ( 
 id INT PRIMARY KEY, 
 nome VARCHAR(100), 
 preco DECIMAL(5,2) 
);

CREATE TABLE tb_pedidos_pizzaria ( 
 id INT PRIMARY KEY, 
 id_cliente INT, 
 id_produto INT, 
 data_pedido DATE 
);

-- INSERINDO REGISTROS NAS TABELAS
INSERT INTO tb_clientes_pizzaria VALUES 
(1, 'Ana Paula', '11999999999'), 
(2, 'Lucas Santos', '11988888888'), 
(3, 'Ana Paula', '11999999999'), -- duplicado 
(4, 'Carlos', NULL), -- sem telefone 
(5, 'MARIA jose', '11912345678');-- nome mal formatado

-- PRODUTOS 
INSERT INTO tb_produtos_pizzaria VALUES 
(1, 'Pizza Calabresa', '35.00'), 
(2, 'Pizza Mussarela', '999.99'), -- preço absurdo 
(3, 'Pizza Marguerita', '-5.00'), -- preço negativo 
(4, 'PIZZA BACON', '40.00'), 
(5, 'Pizza Portuguesa', '0.00'); -- preço zero 

-- PEDIDOS (sem FK, proposital) 
INSERT INTO tb_pedidos_pizzaria VALUES 
(1, 2, 1, '2024-10-10'), 
(2, 4, 3, '2024-10-12'), 
(3, 7, 2, '2024-10-13'); -- cliente ID 7 não existe


-- CONSULTANDO OS DADOS TABELAS CRIADAS
select * from tb_clientes_pizzaria;
select * from tb_produtos_pizzaria;
select * from tb_pedidos_pizzaria;


-- RESOLVENDO AS MISSOES DE CORRECOES DA BASE

-- ETAPA 01 -> DELE O CLIENTE DUPLICADO
delete from tb_clientes_pizzaria
where id = 3;


-- ETAPA 2 -> CORRIJA O NOME
update tb_clientes_pizzaria
set nome = 'Maria Jose'
where id = 5;

-- ETAPA 3 -> ATUALIZE O TELEFONE
update tb_clientes_pizzaria
set telefone = '11911112222'
where id = 4;

-- ETAPA 4 -> CORRIGA OS PREÇOS
update tb_produtos_pizzaria
set preco = '32.00'
where id = 2;

update tb_produtos_pizzaria
set preco = '36.00'
where id = 3;

update tb_produtos_pizzaria
set preco = '38.00'
where id = 5;

update tb_produtos_pizzaria
set nome = 'Pizza Bacon'
where id = 4;

-- ETAPA 05 -> DELETE O PEDIDO DO ID QUE NAO EXISTE
delete from tb_pedidos_pizzaria
where id_cliente = 7;
