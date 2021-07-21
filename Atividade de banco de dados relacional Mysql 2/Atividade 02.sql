/* Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria
(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre  tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
 */

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
estoque boolean not null,
ativo boolean not null,
primary key(id)
);

insert into tb_categoria (tipo, estoque, ativo) values ("Pizza Salgada", true, true);
insert into tb_categoria (tipo, estoque, ativo) values ("Pizza Doce", true, true);
insert into tb_categoria (tipo, estoque, ativo) values ("Calzone Salgado", true, true);
insert into tb_categoria (tipo, estoque, ativo) values ("Calzone doce", true, true);
insert into tb_categoria (tipo, estoque, ativo) values ("Bebidas", true, true);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
produtos varchar (255) not null,
broto boolean not null,
preco_unitario decimal(6,2) not null,
qtd_produto int not null,
data_pedido date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Calabre Vegan", false, 40.00, 2, "2021-07-20", 1);
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Mix de Cogumelos", false, 42.00, 2, "2021-07-20", 1);
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Jaca Crazy", false, 39.00, 3, "2021-07-20", 1);
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Chocopaçoca", false, 45.00, 2, "2021-07-20", 2 );
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Sensação", false, 46.00, 1, "2021-07-20", 2 );
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Banana com Canela", false, 43.00, 1, "2021-07-20", 4);
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Diferentona", false, 44.00, 2, "2021-07-20", 3);
insert into tb_pizza (produtos, broto, preco_unitario, qtd_produto, data_pedido, categoria_id) values ("Suco natural de limão", false, 6.00, 2, "2021-07-20", 5);

select * from tb_pizza;

select * from tb_pizza where preco_unitario > 45;

select * from tb_pizza where preco_unitario between 29 and 60;

select * from tb_pizza where produtos like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 1;