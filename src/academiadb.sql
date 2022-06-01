create database academiadb;

use academiadb;

create table aluno(
	id int not null primary key auto_increment,
	nome varchar(60) not null,
	cpf char(11) not null,
	endereco varchar(100),
	telefone char(11),
	nascimento date
);

create table professor(
	id int not null primary key auto_increment,
	nome varchar(60) not null,
	cpf char(11) not null,
	endereco varchar(100),
	telefone char(11),
	nascimento date,
	salario decimal(8,2)
);

create table pagamento(
	id int not null primary key auto_increment,
	id_aluno int not null,
	data date not null,
	valor decimal(8,2) not null,
	tipo char(20) not null,
	info varchar(200),
	foreign key(id_aluno) references aluno(id)
);

create table treino(
	id int not null primary key auto_increment,
	id_aluno int not null,
	id_professor int not null,
	data date not null,
	tipo char(20) not null,
	info varchar(200),
	foreign key(id_aluno) references aluno(id),
	foreign key(id_professor) references professor(id)
);

