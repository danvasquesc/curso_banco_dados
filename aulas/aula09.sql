use DB_T04301_DAN_VASQUES;

-- CRIANDO A TABELA DE PRODUTOS
CREATE TABLE TB_PRODUTOS_PAD_AR (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(5,2),
    estoque INT);

SELECT * FROM TB_PRODUTOS_PAD_AR;

-- INSERINDO DADOS NA TABELA
INSERT INTO TB_PRODUTOS_PAD_AR (nome, preco, estoque)
VALUES ('Pão Francês', 1.00, 50),
       ('Pão de Queijo', 2.50, 15),
	   ('Pão Integral', 6.00, 18),
       ('Pão Australiano', 8.50, 12),
       ('Bolo de Chocolate', 8.00, 10),
	   ('Bolo de Cenoura', 6.50, 25),
       ('Bolo Gelado', 11.00, 5),
       ('Bolo de Fubá', 5.00, 22),
       ('Mini Bolo de Morango', 7.50, 8),
       ('Coxinha', 4.50, 30),
       ('Esfiha', 3.00, 28),
       ('Quibe', 3.50, 35),
       ('Empada', 6.00, 14),
       ('Croissant', 7.00, 40),
       ('Croissant de Chocolate', 9.50, 20),
       ('Café', 3.50, 30),
       ('Café Expresso', 5.00, 18),
       ('Suco Natural', 4.00, 18),
       ('Suco de Laranja', 6.50, 10),
       ('Refrigerante', 5.50, 22),
       ('Água Mineral', 2.00, 60),
       ('Sanduíche Natural', 9.00, 12),
       ('Sanduíche de Frango', 10.00, 9),
       ('Torrada', 2.50, 25);
    
SELECT * FROM TB_PRODUTOS_PAD_AR;
    
-- EXERCICIO 01 -> PREÇOS ACIMA DE 5.00
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE preco > '5.00'
ORDER BY preco ASC;

-- EXERCICIO 02 -> PRODUTOS COM A PALAVRA 'BOLO'
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE nome LIKE '%bolo%'
ORDER BY nome ASC;

-- EXERCICIO 03 -> PRODUTOS COM MENOS DE 20 UNIDADES
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE estoque < '20'
ORDER BY estoque DESC;

-- EXERCICIO 04 -> PRODUTOS ENTRE 3.00 E 10.00 - OPÇÃO 1
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE preco >= '3.00'AND preco <='10.00'
ORDER BY PRECO ASC;

-- OPÇÃO 2
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE preco BETWEEN '3.00' AND '10.00'
ORDER BY PRECO ASC;

-- EXERCICIO 05 -> PRODUTOS COM A PALAVRA 'PAO'
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE nome LIKE 'Pao%'
ORDER BY nome ASC;

-- EXERCICIO 06 -> PRODUTOS COM A PALAVRA CROISSANT
SELECT * FROM TB_PRODUTOS_PAD_AR
WHERE nome LIKE '%Croissant%' AND estoque > 30
ORDER BY nome ASC;
