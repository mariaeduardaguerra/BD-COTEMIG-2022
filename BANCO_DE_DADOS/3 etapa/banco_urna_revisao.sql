create database banco_urna;
use banco_urna;

create table partido (
     id_partido int unsigned not null primary key auto_increment,
     nome varchar(80) not null,
     sigla varchar(15) not null
);

create table cargo (
     id_cargo int unsigned not null primary key auto_increment,
     nome varchar(80) not null,
     descricao varchar(120) not null
);

create table candidato (
     id_candidato int not null primary key auto_increment,
     nome varchar(80) not null,
     endereco varchar(120) not null,
	 foreign key (partido_id) references partido(id_partido),
	 foreign key (cargo_id) references cargo(id_cargo)
);

create table eleitor (
     id_eleitor int not null primary key auto_increment,
     nome varchar(80) not null,
     endereco varchar(120) not null,
     foreign key (secoes_id) references eleitor(id_eleitor)
);

create table voto (
     id_voto int not null primary key auto_increment,
     dt_data date not null,
     quantidade int not null,
	 foreign key (eleitor_id) references eleitor(id_eleitor),
	 foreign key (cargo_id) references cargo(id_cargo)
);

-- b) Faça a inserção de 03 registros por tabela.

insert into partido values
(default,'1','Partido 01','Sigla 01'),
(default,'2','Partido 02','Sigla 02'),
(default,'3','Partido 03','Sigla 03'),
(default,'4','Partido 04','Sigla 04'),
(default,'5','Partido 05','Sigla 05');

select * from partido;

insert into cargo values
(default,'1','Cargo 01','Dercrição 01'),
(default,'2','Cargo 02','Dercrição 02'),
(default,'3','Cargo 03','Dercrição 03'),
(default,'4','Cargo 04','Dercrição 04'),
(default,'5','Cargo 05','Dercrição 05');

select * from cargo;

insert into candidato values
(default,'1','Candidato 01','Endereço 01',4,5),
(default,'2','Candidato 02','Endereço 02',1,3),
(default,'3','Candidato 03','Endereço 03',2,5),
(default,'4','Candidato 04','Endereço 04',3,4),
(default,'5','Candidato 05','Endereço 05',4,1);

select * from candidato;

insert into eleitor values
(default,'1','Eleitor 01','Endereço 01',4),
(default,'2','Eleitor 02','Endereço 02',1),
(default,'3','Eleitor 03','Endereço 03',2),
(default,'4','Eleitor 04','Endereço 04',3),
(default,'5','Eleitor 05','Endereço 05',5);

select * from eleitor;

insert into voto values
(default,'1','2023-01-01','Quantidade 01',4,5),
(default,'2','2023-02-01','Quantidade 02',1,3),
(default,'3','2023-03-01','Quantidade 03',2,5),
(default,'4','2023-04-01','Quantidade 04',3,4),
(default,'5','2023-05-01','Quantidade 05',4,1);

select * from voto;

-- c) Atualize um dado a sua escolha do primeiro registro de cada tabela.




























