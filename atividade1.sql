create database db_empresaRH;

use db_empresaRH;

create table tb_funcionares (
id bigint auto_increment,
nome varchar (100) not null,
cargo varchar (100) not null,
supervisor varchar (100) not null,
salario decimal (6,2) not null, 
ferias boolean not null,
primary key (id)
);

insert into tb_funcionares (nome, cargo, supervisor, salario, ferias) values ("Lilian", "Instrutora de Treinamento", "Débora", 1800.00, false);
insert into tb_funcionares (nome, cargo, supervisor, salario, ferias) values ("Paloma", "Analista de Processos", "Thiago", 2300.00, false);
insert into tb_funcionares (nome, cargo, supervisor, salario, ferias) values ("Daiane", "Analista de Qualidade", "Lucilene", 2800.00, false);
insert into tb_funcionares (nome, cargo, supervisor, salario, ferias) values ("Alexandre", "Supervisor Operacional", "Agnes", 3500.00, true);
insert into tb_funcionares (nome, cargo, supervisor, salario, ferias) values ("Natalia", "Backup do Supervisor", "Alexandre", 1500.00, false);

select * from tb_funcionares where salario > 2000.00; 
select * from tb_funcionares where salario < 2000.00;

update tb_funcionares set supervisor = "Agnes" where id = 6;