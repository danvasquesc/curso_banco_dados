use DB_T04301_DAN_VASQUES;

-- CRIANDO TABELA DE CONTATOS
create table TB_CONTATOS_TESTE_DML (
	id_contato int auto_increment primary key,
    nome_contato varchar(100) not null,
    telefone varchar(20) not null,
    email varchar(100) not null);
    
-- INSERINDO REGISTROS NA TABELA DE CONTATOS
insert into TB_CONTATOS_TESTE_DML (nome_contato, telefone, email)
values ('LUIZA', '(13) 99999-9999', 'luiza@email.com'),
	   ('PETER', '(12) 98888-8888', 'peter@email.com'),
       ('PEDRO', '(11) 97777-7777', 'pedro@email.com'),
       ('VANESSA', '(10) 96666-6666', 'vanessa@email.com'),
       ('TATIANE', '(18) 94444-4444', 'tatiane@email.com');

-- CONSULTA TABELA DE CONTATOS
select * from TB_CONTATOS_TESTE_DML;

-- UPDATE - ATUALIZANDO/ALTERANDO/MODIFICANDO
update TB_CONTATOS_TESTE_DML
set telefone = '(13) 99718-7676'
where id_contato = 3;

-- ATUALIZAR VARIOS CAMPOS DE UMA SÓ VEZ
update TB_CONTATOS_TESTE_DML
set nome_contato = 'PEDRO LUIZ',
	telefone = '(71) 98765-2222',
    email = 'pedro.luiz@email.com'
where id_contato = 3;

-- EXCLUIR REGISTROS DE UMA TABELA
delete from TB_CONTATOS_TESTE_DML
where id_contato = 5;
