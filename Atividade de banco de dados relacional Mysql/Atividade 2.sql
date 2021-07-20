-- Atividade 2
-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados.
-- Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.

create database	db_ecommerceprodutos;

use db_ecommerceprodutos;

create table tb_produtos(
Codigo bigint auto_increment,
NomeProduto varchar(255),
Categoria varchar(255),
Quantidade varchar(255),
Valor decimal,
primary key(Codigo)
);

insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Tênis Sport", "Calçados", "12", 249.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Sandália Casual", "Calçados", "8", 159.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Camiseta 100% Algodão Orgânico", "Roupas", "25", 89.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Moletom 100% Algodão Orgâncio", "Roupas", "15", 189.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Mochila", "Acessórios", "15", 299.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Óculos", "Acessórios", "6", 509.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Sungas", "Moda Íntima", "12", 99.99);
insert into tb_produtos(NomeProduto, Categoria, Quantidade, Valor) values ("Pijamas", "Moda Íntima", "12", 139.99);

alter table tb_produtos modify Valor decimal(8,2);

select * from tb_produtos;

select * from tb_produtos where Valor > 500;

select * from tb_produtos where Valor < 500;