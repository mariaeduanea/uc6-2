create table aluno(
	nome varchar(30),
	cpf_aluno char (11) primary key,
	data_nascimento Date,
	telefone_aluno char(11),
	email_aluno varchar(33),
	cep char(8),
	rua varchar(20),
	numero char(7)
);
insert into aluno (nome, cpf_aluno, data_nascimento, telefone_aluno, email_aluno,cep, rua, nome) values (1, 'Antonella','377.640.374-86','20-02-2001','8725298703','vitoria@alcoa.com.br','55332970','RuadoComércio',

create table matricula(
	matricula int identity(1,1) primary key,
	data_matricula Date
);

create table curso(
	id_curso int identity(1,1) primary key,
	nome_curso varchar(10)
);
create table funcionario(
	nome varchar(30),
	cpf char(11),
	id_funcionario int identity(1,1) primary key,
	cargo varchar
);

create table unidade(
	nome_unidade varchar(11),
	unidade int identity(1,1)primary key,
	cep char(8),
	rua varchar(20)
);

create table senac(
	cnpj int identity(1,1) primary key

);

create table departamento(
	departamento int identity(1,1)primary key,
	nome_departamento varchar (16),
	id_funcionario int
	foreign key(id_funcionario) references funcionario(id_funcionario)
);

create table professor(
	id_funcionario int,
	foreign key (id_funcionario) references funcionario (id_funcionario)
);

create table turma(
	numero_turma int identity(1,1)primary key,
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);

create table aprendiz(
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);

create table psg(
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);

create table ead(
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);




