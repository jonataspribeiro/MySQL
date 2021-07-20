-- Atividade 3
-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne o/as estudantes  com a nota maior do que 7.
-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.
-- Ao término atualize um dado desta tabela através de uma query de atualização.

create database db_escola;

use db_escola;

create table tb_estudantes(
RA bigint auto_increment,
Nome varchar(255),
Serie varchar(255),
Disciplina varchar(255),
Nota decimal(8,2),
primary key(RA)
);

insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Arnaldo Gomes", "2º ano", "Matemática", 7.5);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Fernanda Calazans", "5º ano", "História", 9.5);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Jeffeson Azevedo", "7º ano", "Português", 6.5);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Matheus de Jesus", "4º ano", "Geografia", 8.0);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Raissa Castro", "3º ano", "Biologia", 10.0);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Gisele Nazario", "6º ano", "Física", 5.0);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Nathalia Cavalcante", "8º ano", "Química", 9.0);
insert into tb_estudantes(Nome, Serie, Disciplina, Nota) values ("Marcelo Mattos", "5º ano", "Inglês", 6.5);

select * from tb_estudantes;

select * from tb_estudantes where Nota > 7;

select * from tb_estudantes where Nota < 7;