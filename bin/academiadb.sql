create database academiadb;

use academiadb;

create table aluno(
	id int not null primary key auto_increment,
	nome varchar(60) not null,
	cpf char(11) not null,
	endereco varchar(100) not null,
	telefone char(11) not null,
	nascimento date not null
);

create table professor(
	id int not null primary key auto_increment,
	nome varchar(60) not null,
	cpf char(11) not null,
	endereco varchar(100) not null,
	telefone char(11) not null,
	nascimento date not null,
	salario decimal(8,2) not null
);

create table pagamento(
	id int not null primary key auto_increment,
	id_aluno int not null,
	data date not null,
	valor decimal(8,2) not null,
	tipo char(20) not null,
	info varchar(200) null,
	foreign key(id_aluno) references aluno(id)
);

create table treino(
	id int not null primary key auto_increment,
	id_aluno int not null,
	id_professor int not null,
	data date not null,
	tipo char(20) not null,
	info varchar(200) null,
	foreign key(id_aluno) references aluno(id),
	foreign key(id_professor) references professor(id)
);

insert into aluno (nome, cpf, endereco, telefone, nascimento) values
('Maria Rios', '11122233344', 'Rua Principal, 4 - Jardim Rosa', '11911112222', '1980-10-01'),
('Alana Santos', '22233344455', 'Rua Lateral, 56 - Vila Dois', '11922223333', '1995-02-28'),
('Bianca Rosa', '33344455566', 'Rua das Aves, 459 - Vila Marta', '11933334444', '1977-09-17');

insert into professor (nome, cpf, endereco, telefone, nascimento, salario) values
('Renata Reis', '44455566677', 'Rua dos Cariris, 12 - Jardim Nove', '11944445555', '1969-01-30', 3600.00),
('Carla Sousa', '55566677788', 'Rua Aberta, 234 - Vila Nova', '11955556666', '1975-03-20', 3250.00),
('Ana Lopes', '66677788899', 'Rua Manzi, 92 - Jardim Lago', '11966667777', '1981-11-24', 3480.00);

insert into pagamento (id_aluno, data, valor, tipo, info) values
(1, '2022-05-10', 195.00, 'Dinheiro', ''),
(1, '2022-06-10', 205.00, 'Cartão de Crédito', ''),
(2, '2022-05-10', 195.00, 'Dinheiro', ''),
(2, '2022-06-14', 215.00, 'Dinheiro', 'Atrasado - Multa R$ 20,00'),
(3, '2022-05-10', 195.00, 'Dinheiro', '');

insert into treino (id_aluno, id_professor, data, tipo, info) values
(1, 3, '2022-05-08', 'Fortalecimento', 'Exercícios para Joelho'),
(1, 3, '2022-05-10', 'Alongamento', ''),
(2, 1, '2022-05-09', 'Fortalecimento', 'Exercícios para Lombar e Tronco'),
(2, 1, '2022-05-10', 'Musculação', 'Membros superiores'),
(3, 2, '2022-05-15', 'Fortalecimento', 'Exercícios para Quadril');

select * from aluno;
select * from professor;
select * from pagamento;
select * from treino;
