create database db_ecommerce;

use db_ecommerce; 

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
tipo enum ('Viagem Bate e Volta', 'Viagem Final de Semana'),
lugar varchar (100) not null,
preco decimal (6,2), 
vagas_disponiveis int,
primary key (id)
);

insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Ilha do Mel", 'Viagem Bate e Volta', "Paraná", 189.00, 14);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Beto Carreiro", 'Viagem Bate e Volta', "Santa Catarina", 229.00, 8);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Rota da Uva", 'Viagem Bate e Volta', "Jundiaí-SP", 89.00, 13);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Fortaleza e Jericoacoara ", 'Viagem Final de Semana', "Nordeste", 1999.00, 6);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Bonito ", 'Viagem Final de Semana', "Mato Grosso do Sul", 1499.00, 1);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Caverna do Diabo ", 'Viagem Bate e Volta', "Eldorado-SP", 179.00, 11);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: São Thomé das Letras ", 'Viagem Final de Semana', "Minas Gerais", 289.00, 20);
insert into tb_produtos (nome, tipo, lugar, preco, vagas_disponiveis) values ("Pacote: Arraial do Cabo ", 'Viagem Final de Semana', "Rio de Janeiro", 510.00, 5);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set vagas_disponiveis = 7 where id = 6; 