create table departamento( 
codigo serial primary key,
nome varchar(50) not null
);
create table professor(
codigo serial primary key, 
nome varchar(50) not null,
cod_departamento integer,
foreign key (cod_departamento) references departamento (codigo)
);
create table disciplina(
codigo serial primary key,
nome varchar(50) not null,
Ementa int not null,
num_creditos int not null,
cod_departamento integer,
cod_professor integer,
foreign key (cod_departamento) references departamento (codigo),
foreign key (cod_professor) references professor (codigo)
);
create table pre_requisito(
codigo serial primary key,
cod_disciplina integer,
foreign key (cod_disciplina) references disciplina (codigo)
);
create table aluno(
codigo serial primary key,
nome varchar(50) not null,
endereço varchar(50) not null
);
/*drop table departamento professor


