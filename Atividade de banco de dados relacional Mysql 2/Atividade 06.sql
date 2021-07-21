/* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5

atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.*/

create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
categoria varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, categoria, ativo) values ("Java", "Back-end", true);
insert into tb_categoria (descricao, categoria, ativo) values ("C++", "Back-end", true);
insert into tb_categoria (descricao, categoria, ativo) values ("Javascript", "Front-end", true);
insert into tb_categoria (descricao, categoria, ativo) values ("Python", "Back-end", true);
insert into tb_categoria (descricao, categoria, ativo) values ("CSS", "Front-end", true);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
preco decimal(6,2) not null,
qtd_horas int not null,
data_compra date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Java de A a Z", 2000.00, 400, '2022-11-30', 1);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Java para Iniciantes", 199.00, 40, '2022-05-31', 1);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Programando de verdade C++", 1599.00, 200, '2022-07-31', 2);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Aprendendo Python", 99.90, 12, '2022-12-31', 4);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Python para entrar na área", 599.99, 100, '2022-08-31', 4);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Javascript Ilura", 75.00, 80, '2022-07-31', 3);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("Front-end empregado com Javascript", 1800.00, 300, '2022-03-31', 3);
insert into tb_curso (curso, preco, qtd_horas, data_compra, categoria_id) values ("CSS Top", 150.00, 48, '2022-01-31', 5);

select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where curso like "J%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 4;