/* Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros). */

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
resumo varchar(255) not null,
armas varchar(255) not null,
primary key(id)
);

insert into tb_classe (classe, resumo, armas) values ("Arcanista","Arcanistas são mágicos renegados que utilizam seus corpos como canalizadores de energia arcana","Machados, Adagas, Lanças");
insert into tb_classe (classe, resumo, armas) values ("Feiticeiro","Feiticeiros são guerreiros espirituais que evocam almas dos mortos e criaturas para ajudá-los","Maças, Cajados, Espadas");
insert into tb_classe (classe, resumo, armas) values ("Monge","Monges são guerreiros sagrados que canalizam o poder sagrado através de sua força de vontade","Daibos, Armas de Punho, Armas de Haste");
insert into tb_classe (classe, resumo, armas) values ("Barbáro","Bárbaros são errantes selvagens que nunca hesitam em combates corpo a corpo","Armas Poderosas, Adagas, Machados");
insert into tb_classe (classe, resumo, armas) values ("Cruzado","Os Cruzados são os impassíveis campeões da fé e da lei","Manguais, Espadas, Lanças");

select * from tb_classe;

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
poder_de_ataque bigint not null,
poder_de_defesa bigint not null,
habilidades varchar(255) not null,
nivel bigint not null ,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Afrodite", 7800, 9100, "Projétil Mágico, Pulso Elétrico, Sede de Poder, Presença Astral", 20, 1);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Hermes", 1580, 1510, "Punhos Trovejantes, Clarão Cegante", 2, 3);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Apolo", 9200, 6300, "Nuvem Ácida, Confusão Generalizada, Remédio Amargo, Busca Espirtual", 40, 2);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Athena", 8500, 8000, "Força do Paraíso, Vigilante, Escudo Reluzente, Fúria do Paraíso", 32, 5);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Poseidon", 7500, 5900, "Implacável, Impacto Sísmico, Salto", 12, 4);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Têmis", 1655, 1670, "Nova Gélida, Pele de Diamante", 8, 1);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Dionísio", 9400, 8200, "Ritos Tribais, Lealdade Feroz, Busca Espirtual, Confusão Generalizada, Nuvem Ácida", 55, 2);
insert into tb_personagem (nome, poder_de_ataque, poder_de_defesa, habilidades, nivel, classe_id) values ("Hera", 9600, 9000, " Epifania, Mantra de Convicção, Aliado Místico, Impulsão, Ataque de Combinação, ", 72, 3);

select * from tb_personagem;

select * from tb_personagem where poder_de_ataque > 2000;

select * from tb_personagem where poder_de_ataque between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 3;