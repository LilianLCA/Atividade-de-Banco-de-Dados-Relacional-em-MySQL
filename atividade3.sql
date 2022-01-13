create database db_registroEscolar;

use db_registroEscolar;

create table tb_estudantes (
id bigint auto_increment,
nome varchar (100) not null, 
idade int not null,
serie varchar (50) not null,
coordenador_responsavel varchar (100) not null,
aprovado boolean not null, 
primary key (id)
);

alter table tb_estudantes add nota_final int not null;

insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Lilian", 15, " 1º ano do Ensino Médio", "Débora", true, 9);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Paloma", 16, " 2º ano do Ensino Médio", "Thiago", true, 8);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Daiane", 16, " 2º ano do Ensino Médio", "Lucilene", true, 8);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Marini", 15, " 1º ano do Ensino Médio", "Débora", false, 6);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Alexandre", 17, " 3º ano do Ensino Médio", "Agnes", false, 6);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Natalia", 15, " 1º ano do Ensino Médio", "Agnes", true, 7);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Bruno", 17, " 3º ano do Ensino Médio", "Rafael", true, 9);
insert into tb_estudantes (nome, idade, serie, coordenador_responsavel, aprovado, nota_final) values ("Max", 16, " 2º ano do Ensino Médio", "Jefferson", true, 10);

select * from tb_estudantes where nota_final > 7;
select * from tb_estudantes where nota_final < 7;

update tb_estudantes set coordenador_responsavel = "Agnes" where id = 8;