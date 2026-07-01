-- AULA INICIAL SOBRE SQL JOINS

use DB_T04301_DAN_VASQUES;

CREATE TABLE TabelaA(
  nome varchar(50) NULL);

CREATE TABLE TabelaB(
  nome varchar(50) NULL);

INSERT INTO TabelaA 
VALUES('Fernanda'),
	  ('Josefa'),
      ('Luiz'),
      ('Fernando');

INSERT INTO TabelaB 
VALUES('Carlos'),
	  ('Manoel'),
      ('Luiz'),
      ('Fernando');
      
select * from TabelaA;
select * from TabelaB;

-- INNER JOIN --
-- retorna os registros/linhas que são comuns às duas tabelas
select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
inner join TabelaB as B
on A.nome = B.nome;

