/* Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, 
onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

Siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de 
produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).*/

create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, tipo, ativo) values ("Fundação", "Residencial", true);
insert into tb_categoria (descricao, tipo, ativo) values ("Hidráulica", "Residencial", true);
insert into tb_categoria (descricao, tipo, ativo) values ("Alvenaria", "Residencial", true);
insert into tb_categoria (descricao, tipo, ativo) values ("Elétrica", "Residencial", true);
insert into tb_categoria (descricao, tipo, ativo) values ("Pintura", "Residencial", true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
preco double(6,2) not null,
marca varchar(255) not null,
qualidade varchar(255) not null,
quantidade int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

select * from tb_produto;

insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Cimento", 30.00, "Votorantim", "A", 2000, 3);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Cal", 20.00, "Cauê", "A", 1000, 3);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Ferro", 100.00, "Gerdau", "A", 100, 1);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Tubulação", 25.00, "Tigre", "A", 1500, 2);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Conduíte", 90.00, "Fortlev", "B", 500, 4);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Conduíte", 130.00, "Osram", "A",  800, 4);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Tinta Acrílica", 250.00, "Suvinil", "A",  230, 5);
insert into tb_produto (nome, preco, marca, qualidade, quantidade, categoria_id) values ("Tinta Acrílica", 210.00, "Eucatex", "B",  160, 5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 5;