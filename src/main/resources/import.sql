-- This file allow to write SQL commands that will be emitted in test and dev.
-- The commands are commented as their support depends of the database
-- insert into myentity (id, field) values(1, 'field-1');
-- insert into myentity (id, field) values(2, 'field-2');
-- insert into myentity (id, field) values(3, 'field-3');
-- alter sequence myentity_seq restart with 4;

insert into estado (nome, sigla, regiao) values('Tocantins', 'TO', 2);
insert into estado (nome, sigla, regiao) values('Goias', 'GO', 1);
insert into estado (nome, sigla, regiao) values('São Paulo', 'SP', 4);
insert into estado (nome, sigla, regiao) values('Rio de Janeiro', 'RJ', 4);
insert into estado (nome, sigla, regiao) values('Rio Grande do Sul', 'RS', 5);

insert into municipio (nome, id_estado) values('Palmas', 1);
insert into municipio (nome, id_estado) values('Araguaina', 1);
insert into municipio (nome, id_estado) values('Goiania', 2);
insert into municipio (nome, id_estado) values('Anapolis', 2);
insert into municipio (nome, id_estado) values('Sao Paulo', 3);
insert into municipio (nome, id_estado) values('Campinas', 3);
insert into municipio (nome, id_estado) values('Rio de Janeiro', 4);
insert into municipio (nome, id_estado) values('Niteroi', 4);
insert into municipio (nome, id_estado) values('Porto Alegre', 5);
insert into municipio (nome, id_estado) values('Caxias do Sul', 5);