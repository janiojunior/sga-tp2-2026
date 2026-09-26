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

insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Ana Martins', 'ana.martins@sga.com', '11111111111', '1994-03-12', 'Feminino', 'Quadra 101 Sul, Palmas - TO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Bruno Costa', 'bruno.costa@sga.com', '22222222222', '1988-07-25', 'Masculino', 'Rua das Acacias, Araguaina - TO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Carla Nunes', 'carla.nunes@sga.com', '33333333333', '1999-11-08', 'Feminino', 'Avenida JK, Palmas - TO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Diego Alves', 'diego.alves@sga.com', '44444444444', '1991-01-18', 'Masculino', 'Rua 10, Goiania - GO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Elaine Rocha', 'elaine.rocha@sga.com', '55555555555', '1985-09-02', 'Feminino', 'Setor Bueno, Goiania - GO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Felipe Moura', 'felipe.moura@sga.com', '66666666666', '1996-05-14', 'Masculino', 'Rua XV, Anapolis - GO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Gabriela Lima', 'gabriela.lima@sga.com', '77777777777', '1993-12-21', 'Feminino', 'Bairro Centro, Sao Paulo - SP');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Henrique Sousa', 'henrique.sousa@sga.com', '88888888888', '1987-04-09', 'Masculino', 'Vila Mariana, Sao Paulo - SP');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Isabela Freitas', 'isabela.freitas@sga.com', '99999999999', '1998-08-30', 'Feminino', 'Taquaral, Campinas - SP');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Joao Pedro Dias', 'joao.dias@sga.com', '10101010101', '1990-02-17', 'Masculino', 'Icarai, Niteroi - RJ');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Karen Ribeiro', 'karen.ribeiro@sga.com', '12121212121', '1986-06-11', 'Feminino', 'Botafogo, Rio de Janeiro - RJ');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Lucas Ferraz', 'lucas.ferraz@sga.com', '13131313131', '1989-10-05', 'Masculino', 'Leblon, Rio de Janeiro - RJ');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Mariana Prado', 'mariana.prado@sga.com', '14141414141', '1992-03-27', 'Feminino', 'Moinhos de Vento, Porto Alegre - RS');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Nicolas Teixeira', 'nicolas.teixeira@sga.com', '15151515151', '1984-12-03', 'Masculino', 'Centro, Caxias do Sul - RS');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Olivia Barros', 'olivia.barros@sga.com', '16161616161', '1995-01-29', 'Feminino', 'Plano Diretor Sul, Palmas - TO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Paulo Sergio Melo', 'paulo.melo@sga.com', '17171717171', '1983-07-07', 'Masculino', 'Jardim America, Goiania - GO');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Quezia Fernandes', 'quezia.fernandes@sga.com', '18181818181', '1997-09-19', 'Feminino', 'Cambui, Campinas - SP');
insert into pessoa (nome, email, cpf, dataNascimento, genero, endereco) values ('Rafael Batista', 'rafael.batista@sga.com', '19191919191', '1982-11-23', 'Masculino', 'Centro Historico, Porto Alegre - RS');

insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '11111111111'), '63', '991110001', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '22222222222'), '63', '991110002', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '33333333333'), '63', '991110003', false);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '44444444444'), '62', '992220004', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '55555555555'), '62', '992220005', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '66666666666'), '62', '992220006', false);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '77777777777'), '11', '993330007', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '88888888888'), '11', '993330008', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '99999999999'), '19', '994440009', false);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '10101010101'), '21', '995550010', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '12121212121'), '21', '995550011', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '13131313131'), '21', '995550012', false);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '14141414141'), '51', '996660013', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '15151515151'), '54', '996660014', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '16161616161'), '63', '991110015', false);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '17171717171'), '62', '992220016', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '18181818181'), '19', '994440017', true);
insert into telefone (pessoa_id, codigo_area, numero, whatsapp) values ((select id from pessoa where cpf = '19191919191'), '51', '996660018', false);

insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '11111111111'), 'Paciente com acompanhamento semanal para ansiedade.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '22222222222'), 'Paciente em processo de orientacao profissional.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '33333333333'), 'Paciente com retorno mensal.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '44444444444'), 'Paciente com encaminhamento psiquiatrico anterior.', false);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '55555555555'), 'Paciente iniciou atendimento em grupo.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '66666666666'), 'Paciente com foco em manejo de estresse.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '77777777777'), 'Paciente com acompanhamento para luto.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '88888888888'), 'Paciente em fase final do plano terapeutico.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '99999999999'), 'Paciente com atendimentos quinzenais.', true);
insert into paciente (pessoa_id, observacoes, ativo) values ((select id from pessoa where cpf = '10101010101'), 'Paciente com demanda relacionada a sono e rotina.', false);

insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '99999999999'), 'CRP-01/10001', 'Terapia Cognitivo-Comportamental', 'Profissional com foco em ansiedade e habilidades emocionais.', 180.00, 50, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '10101010101'), 'CRP-01/10002', 'Psicologia Clinica', 'Atua com adultos e jovens em acompanhamento clinico.', 160.00, 50, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '12121212121'), 'CRP-01/10003', 'Neuropsicologia', 'Experiencia em avaliacao cognitiva e reabilitacao.', 220.00, 60, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '13131313131'), 'CRP-01/10004', 'Psicologia Infantil', 'Atendimento voltado para familias e criancas.', 190.00, 50, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '14141414141'), 'CRP-01/10005', 'Terapia de Casal', 'Especialista em relacoes afetivas e mediacao.', 250.00, 80, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '15151515151'), 'CRP-01/10006', 'Psicologia Hospitalar', 'Atua em suporte emocional para contextos de saude.', 210.00, 60, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '16161616161'), 'CRP-01/10007', 'Gestalt-terapia', 'Conduz processos terapeuticos com foco em autonomia.', 170.00, 50, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '17171717171'), 'CRP-01/10008', 'Psicologia Organizacional', 'Experiencia em saude mental no trabalho.', 200.00, 60, false);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '18181818181'), 'CRP-01/10009', 'Terapia Familiar', 'Trabalha com dinamicas familiares e comunicacao.', 230.00, 70, true);
insert into psicologo (pessoa_id, crp, especialidade, bio, valorConsulta, duracaoConsulta, ativo) values ((select id from pessoa where cpf = '19191919191'), 'CRP-01/10010', 'Psicanalise', 'Atendimento clinico com abordagem psicanalitica.', 240.00, 50, true);