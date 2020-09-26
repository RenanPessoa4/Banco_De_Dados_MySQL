create database funcoes_novas;
use funcoes_novas;
create table produtos (
#not null (não pode ser nulo), unique:nao pode repetir
nome varchar(30) not null unique,
descricao text,
pagamento enum ('cartao', 'dinheiro', 'cheque'),
quantidade int UNSIGNED,
#5 numéros ao todo, com dois depois da virugula
preco decimal(5,2),
data date ,
cidade varchar(30) DEFAULT 'São Paulo'
);

alter table produtos add column codigo_produto int first;
select * from produtos;
alter table produtos add marca varchar(30) after preco;



