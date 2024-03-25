use senac_bd
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
--drop table aluno
insert into aluno (nome, cpf_aluno, data_nascimento, telefone_aluno, email_aluno,cep, rua, numero) values ('Antonella','37764037486','20-02-2001','8725298703','vitoria@alcoa.com.br','55332970','RuadoComércio','1112')
select * from aluno

create table matricula(
	matricula int identity(1,1) primary key,
	data_matricula Date
);
select * from matricula
insert into matricula (data_matricula) values ('01-10-2011')

create table curso(
	id_curso int identity(1,1) primary key,
	nome_curso varchar(20) not null,
	data_inicio date not null,
	carga_horaria int not null,
	termino_curso date not null
);
drop table curso
insert into curso (nome_curso, data_inicio, carga_horaria, termino_curso) values ('barbeiro','09-03-2023',111, '12-08-2023')
select * from curso

create table funcionario(
	nome varchar(30),
	cpf char(11),
	id_funcionario int identity(1,1) primary key,
	cargo varchar(100)
);
--drop table funcionario
insert into funcionario (nome,cpf,cargo) values ('rodrigo silva','89056723412','desenvolvedor de sistemas')
select * from funcionario

create table unidade(
	nome_unidade varchar(11),
	unidade int identity(1,1)primary key,
	cep char(8),
	rua varchar(20)
);
insert into unidade (nome_unidade,cep,rua) values ('senac sul','56223809','zona sul')
select * from unidade

create table senac(
	cnpj char (14) primary key

);
insert into senac (cnpj) values ('34567890123456')
select * from senac
--drop table senac
create table departamento(
	departamento int identity(1,1)primary key,
	nome_departamento varchar (29),
	id_funcionario int
	foreign key(id_funcionario) references funcionario(id_funcionario)
); 
insert into departamento (nome_departamento) values ('departamento de rh')
select * from departamento 
--drop table departamento
create table professor(
	id_funcionario int,
	foreign key (id_funcionario) references funcionario (id_funcionario),
	telefone char(09),
	cpf char(10),
	salario decimal(10,2),
	nome_professor varchar(30)
);
insert into professor (telefone,cpf,salario,nome_professor) values ('125678187','3456781231',2500.00,'pietro gomes')
select * from professor
drop table professor 
create table turma(
	numero_turma int identity(1,1)primary key,
	id_curso int,
	foreign key (id_curso) references curso (id_curso)

);
drop table turma
create table aprendiz(
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);
drop table aprendiz
create table psg(
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);
drop table psg
create table ead(
	id_curso int,
	foreign key (id_curso) references curso (id_curso)
);
drop table ead



