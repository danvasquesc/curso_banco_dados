-- AULA SOBRE LEFT JOIN, RIGHT JOIN, OUTER JOIN

-- LEFT JOIN MOSTRA TODOS OS REGISTROS DA TABELA A 
-- E NA TABELA B SOMENTE OS QUE SAO SEMELHANTES A TABELA A

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

-- LEFT JOIN
select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
left join TabelaB as B
on A.nome = B.nome;

-- retorna toda a tabela A e na tabela B fica null o que nao
-- for igual e o dado do que for.
-- podemos usar o left join pra listar na tabela A todos os clientes 
-- e na B os clientes listados que ja fizeram pedidos em x mes


-- RIGHT JOIN --
-- apresenta tudo da tabela B e retorna na tabela da esquerda (tabela A)
-- somente o que for semelhante
select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
right join TabelaB as B
on A.nome = B.nome;


-- OUTER JOIN --
-- tras tudo da tabela A e tudo da tabela B
-- o que for semelhante nao duplica dado
-- no mySQL é a uniao de uma pesquisa de left com right join
select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
left join TabelaB as B
on A.nome = B.nome

union -- comando outer join

select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
right join TabelaB as B
on A.nome = B.nome;

-- no SQL SERVER é full outer join em vez de union

-- LEFT EXCLUDING JOIN
-- na tabela A aparece tudo e na B só o que está nulo
select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
left join TabelaB as B
on A.nome = B.nome
where B.nome is null;

-- RIGHT EXCLUDING JOIN
select A.nome as NomeA,
	   B.nome as NomeB
from TabelaA as A
right join TabelaB as B
on A.nome = B.nome
where A.nome is null;

