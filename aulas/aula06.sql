use DB_T04301_DAN_VASQUES;

create table TB_CONTA_CLIENTE (
	id_cliente int auto_increment primary key,
    nome_cliente varchar(100) not null,
    saldo decimal(10, 2) not null);

-- INSERINDO REGISTROS
insert into TB_CONTA_CLIENTE (nome_cliente, saldo)
values ('FERNANDA', '1000.00'),
	   ('GABRIEL', '800.00');
       
-- CONSULTAR TABELA
select * from TB_CONTA_CLIENTE;


-- USANDO COMANDOS TCL - CONTROLES DE TRANSACAO

-- EXEMPLO 01 -> CREDITAR 300 NO SALDO DA FERNANDA
start transaction; -- iniciar transacao

update TB_CONTA_CLIENTE -- atualizar o saldo da fernanda
set saldo = saldo + 300
where id_cliente = 1;

commit; -- confirmar a transacao

-- EXEMPLO 02 -> TENTANTIVA DE CREDITAR 300 NO SALDO DO GABRIEL
start transaction;

update TB_CONTA_CLIENTE
set saldo = saldo + 300
where id_cliente = 2;

rollback; -- desfazer a transacao (tipo ctrl z)

-- EXEMPLO 03 -> CREDITO EM UMA CONTA E DEBITO EM OUTRA CONTA
start transaction;

update TB_CONTA_CLIENTE -- atualizar o saldo do gabriel
set saldo = saldo + 700
where id_cliente = 2;

savepoint PONTO_SAVE_1; -- salvar para etapa de segurança

-- debitar o saldo da fernanda
update TB_CONTA_CLIENTE
set saldo = saldo - 200
where id_cliente = 1;

rollback to savepoint PONTO_SAVE_1; -- desfaz tudo até a etapa salva

commit;