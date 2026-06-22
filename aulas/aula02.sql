
-- ACESSAR O BD
USE DB_T04301_DAN_VASQUES;

-- CRIANDO A TABELA LIVROS
CREATE TABLE tb_livros (
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(80) NOT NULL,
    ano_publicacao INT,
    genero_livro VARCHAR(50)
);

-- INSERIR REGISTROS NA TABELA LIVROS
INSERT INTO tb_livros (titulo, autor, ano_publicacao, genero_livro)
VALUES('Conhecendo o SQL', 'Alexandre', 2026, 'Tecnologia');


-- INSERIR NOVOS REGISTROS NA TABELA LIVROS
INSERT INTO tb_livros (titulo, autor, ano_publicacao, genero_livro)
VALUES('Dom Casmurro', 'Machado de Assis', 1899, 'Romance'),
	  ('Vidas Secas', 'Graciliano Ramos', 1938, 'Drama'),
      ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, 'Fantasia');

-- CONSULTAR AS INFORMAÇÕES DA TABELA
-- ORDENANDO DE FORMA ASCENDENTE
SELECT * FROM tb_livros
ORDER BY genero_livro ASC;

-- CONSULTAR TRES COLUNAS, ORDENAR PELA COLUNA DO AUTOR EM ASCENDENTE
SELECT titulo, autor, ano_publicacao FROM tb_livros
ORDER BY autor ASC;

-- SELECT COM WHERE RETORNANDO UM GENERO DE LIVRO ESPECIFICO
SELECT * FROM tb_livros
WHERE genero_livro = 'Drama';

-- UTILIZANDO COMANDO LIKE PRA BUSCAR INFORMAÇÕES ESPECIFICAS DE UM CAMPO
-- NO EXEMPLO SÓ PALAVRAS QUE CONTENHAM A LETRA L
SELECT * FROM tb_livros
WHERE titulo LIKE '%L%';

-- PALAVRAS QUE COMEÇA COM LETRA C, % VAI DEPOIS DO C
SELECT * FROM tb_livros
WHERE titulo LIKE 'C%';

-- VARIAÇÃO DE USO DO OPERADOR LIKE
-- CADA _ É UMA LETRA QUE NÃO LEMBRAMOS
SELECT * FROM tb_livros
WHERE titulo LIKE '%S__a_%';