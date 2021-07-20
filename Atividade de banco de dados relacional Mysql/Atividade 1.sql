-- Atividade 1
-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa.
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.

create database	db_rhempresa;

use db_rhempresa;

create table tb_funcionariosrh(
Registro bigint auto_increment,
Nome varchar(255),
Admissao varchar(10),
Cargo varchar(255),
Salario decimal,
primary key(Registro)
);

insert into tb_funcionariosrh(Nome, Admissao, Cargo, Salario) values ("Ana Paula", "02/12/2014", "Analista de RH Pleno", 5000.00);
insert into tb_funcionariosrh(Nome, Admissao, Cargo, Salario) values ("Beatriz Pires", "16/07/2010", "Analista de RH Jr.", 3500.00);
insert into tb_funcionariosrh(Nome, Admissao, Cargo, Salario) values ("Carolina de Oliveira", "07/05/2018","Assistente de RH", 2200.00);
insert into tb_funcionariosrh(Nome, Admissao, Cargo, Salario) values  ("Danilo Vieira", "09/03/2020","Auxiliar de RH", 1700.00);
insert into tb_funcionariosrh(Nome, Admissao, Cargo, Salario) values ("Erica Souza", "13/09/2012","Analista de RH Sênior", 6500.00);

alter table tb_funcionariosrh modify Salario decimal(8,2);

select * from tb_funcionariosrh;

select * from tb_funcionariosrh where Salario > 2000;

select * from tb_funcionariosrh where Salario < 2000;