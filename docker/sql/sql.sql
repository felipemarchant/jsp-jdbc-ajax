create table if not exists usuario (
	id  serial primary key,
	login varchar,
	senha varchar,
	nome varchar,
	telefone varchar,
	cep varchar,
	rua varchar,
	bairro varchar,
	cidade varchar,
	estado varchar,
	ibge varchar,
	fotobase64 varchar,
	contenttype varchar,
	curriculobase64 varchar,
	contenttypecurriculo varchar
);

create table if not exists produto (
	id  serial primary key,
	nome varchar, 
	quantidade decimal(10,2), 
	valor decimal(10,2)
);


create table if not exists telefone (
	id serial primary key,
	numero varchar, 
	tipo varchar,
	usuario int,
	constraint fk_usuario foreign key (usuario) references usuario(id)
);

create table if not exists projeto (
	id serial primary key,
	nome varchar
);

create table if not exists series (
	id serial primary key,
	nome varchar,
	projeto int,
	datainicial varchar,
	datafinal varchar,
	constraint fk_projeto foreign key (projeto) references projeto(id)
);

create table if not exists eventos (
	id serial primary key,
	descricao varchar,
	dataevento varchar
);

insert into usuario
(login, senha, nome)
values('teste', 'teste', 'teste');

insert into eventos
(descricao, dataevento)
values('Natal', '25/12/2021');

insert into eventos
(descricao, dataevento)
values('Ano Novo', '01/01/2022');
