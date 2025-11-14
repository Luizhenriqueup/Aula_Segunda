/*drop table professor;
drop table departamento;*/
create table departamento (
	codigo serial primary key,
	nome varchar(255) not null
);
create table professor(
	codigo serial primary key,
	nome varchar(255) not null,
	codigo_dep integer not null,
	foreign key (codigo_dep) references departamento(codigo)
);
create table disciplina(
	codigo serial primary key,
	nome varchar(255) not null,
	ementa varchar(255) not null,
	num_creditos integer not null,
	codigo_dep integer not null,
	codigo_pro integer not null,
	foreign key (codigo_dep) references departamento(codigo),
	foreign key (codigo_pro) references professor(codigo)
);
create table pre_requisito(
	codigo serial primary key,
	codigo_dis integer not null,
	foreign key (codigo_dis) references disciplina(codigo)
);
create table aluno(
	codigo serial primary key,
	nome varchar(255) not null,
	endereco varchar(255) not null
);
create table telefone_aluno(
	codigo serial primary key,
	numero varchar(255) not null,
	codigo_alu integer not null,
	foreign key (codigo_alu) references aluno(codigo)
);
create table aluno_graduacao(
	codigo serial primary key,
	ano_ingresso integer not null
);
create table aluno_pos_graduacao(
	codigo serial primary key,
	formacao varchar(255) not null,
	codigo_pro integer not null,
	foreign key (codigo_pro) references professor(codigo)
);
create table cursa(
	media float not null,
	ferequencia float not null,
	codigo_dis integer not null,
	codigo_alu integer not null,
	foreign key (codigo_dis) references disciplina(codigo),
	foreign key (codigo_alu) references aluno(codigo)
);
alter table Aluno
add registroAcademico integer not null;

alter table Aluno
drop column registroAcademico;

insert into Departamento (nome)
values ('computação');

insert into Professor (nome, cod_departamento)
values ('alan dos santos', 1);

insert into Professor (nome, cod_departamento)
values ('Paula de Souza', 1);

insert into Professor (nome, cod_departamento)
values ('Camila Ferreira', 2);

insert into Professor (nome, cod_departamento)
values ('Sergio lima', 1);

insert into Disciplina (nome, ementa, cod_departamento, cod_professor, num_creditos)
values ('programação I', 'Variáveis, expressões, condicionais e laço de repetição', 1, 1, 1);

insert into disciplina (nome, ementa, cod_departamento, cod_professor, num_creditos)
values ('programação II', 'Algoritmos de busca e ordenação', 1, 2, 1); 

insert into disciplina (nome, ementa, cod_departamento, cod_professor, num_creditos)
values ('introdução á Administração', 'Conceitos iniciais de ADM', 2, 3, 2);


insert into Aluno (nome, endereço)
values ('João dos Santos', 'Rua lapa, 500');

insert into Aluno (nome, endereço)
values ('Rosane Silva', 'Avenida JK, 1590');

insert into Aluno (nome, endereço)
values ('Aline Camargo', 'Rua 2, 20');

insert into AlunoGraduacao values (1, 2021);
insert into AlunoGraducao values (2, 2019);

insert into Alunoposgraducao

update Aluno set endereço='Rua sergipe, 150'
where nome = 'João dos Santos'

update Aluno set nome='luiz'

select nome from aluno

delete from aluno_graducao

select nome from departamento

select nome from professor
where cod_departamento = 1;

select count(*) from Professor

select * from Professor
where nome like '%a%';

select * from Professor
order by nome desc;

select distinct cod_professor
from disciplina;

select * from professor

select * from Disciplina
join Professor on (cod_professor = professor.codigo);




