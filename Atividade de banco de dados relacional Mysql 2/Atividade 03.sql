/* Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos). */

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Perfumaria",true);
insert into tb_categoria (descricao, ativo) values ("Higiene Pessoal",true);
insert into tb_categoria (descricao, ativo) values ("Medicamentos",true);
insert into tb_categoria (descricao, ativo) values ("Protetor Solar",true);
insert into tb_categoria (descricao, ativo) values ("Infantil",true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255) not null,
tamanho varchar (255) not null,
quantidade int not null,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Semprazol", "Drogabrasil", "20 comprimidos", 50, 10.99, 3);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Lenço Umidecido", "Bebê Feliz", "15 Unidades", 35, 9.99, 5);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Perfume A", "XYZ", "100ml", 75, 89.99, 1);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Perfume B", "ABC", "100ml", 45, 85.99, 1);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Pasta de dente Contente", "Suavitex", "90ml", 65, 4.99, 2);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Enxaguante bucal", "Suavitex", "500ml", 34, 19.99, 2);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Protetor Solar", "Flores & Vegatais", "200g", 12, 25.99, 4);
insert into tb_produto (nome, marca, tamanho, quantidade, preco, categoria_id) values ("Fralda", "Bebê Feliz", "48 unidades", 22, 44.99, 5);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 3;