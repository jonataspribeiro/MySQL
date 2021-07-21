/*
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).*/

create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null, 
organico boolean not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, organico, ativo) values ("Frutas", true, true);
insert into tb_categoria(tipo, organico, ativo) values ("Legumes", true, true);
insert into tb_categoria(tipo, organico, ativo) values ("Verduras", true, true);
insert into tb_categoria(tipo, organico, ativo) values ("Cereais", true, true);
insert into tb_categoria(tipo, organico, ativo) values ("Sucos", true, true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
produto varchar (255) not null,
preco decimal(6,2) not null,
qtd_produto int not null,
data_validade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Maçã", 8.00, 12, "2021-08-01", 1);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Uva", 10.00, 1, "2021-08-02", 1);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Abobrinha", 6.00, 3, "2021-08-01", 2);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Chuchu", 7.00, 3, "2021-08-01", 2);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Rúcula", 5.00, 1, "2021-08-02", 3);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Agrião", 4.00, 1, "2021-08-02", 3);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Grão de bico", 60.00, 5, "2021-08-01", 4);
insert into tb_produto (produto, preco, qtd_produto, data_validade, categoria_id) values ("Detox", 6.50, 1, "2021-07-22", 3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 1;