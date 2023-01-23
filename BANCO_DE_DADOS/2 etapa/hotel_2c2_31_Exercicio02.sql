create database hotel_2c2_31;

create table Cliente(
	   cod integer not null primary key auto_increment,
       Nome varchar(80) not null,
       CPF int not null,
       tipo_convenio varchar(40)
);

create table Reserva(
       cod integer not null primary key auto_increment,
       DataInicio date not null,
       DataFim date not null,
       quarto int not null,
       Valor double(9,20),
       Cliente_cod_fk integer,
       foreign key (Cliente_cod_fk) references Cliente(cod)
);

create table Hospede(
	   cod integer not null primary key auto_increment,
       nome varchar(80),
       Reserva_cod_fk integer,
       foreign key (Reserva_cod) references Reserva(cod)
);

create table Quarto(
       cod integer not null primary key auto_increment,
       numero int not null,
       andar int not null,
       classficacao varchar(40),
       Hospede_cod_fk integer,
       foreign key (Hospede_cod) references Hospede(cod)
);

create table servicos(
	   cod integer not null primary key auto_increment,
       itens varchar(50),
       tipo varchar(50),
       observacao varchar(100),
       Quarto_cod integer,
       foreign key (Quarto_cod) references Quarto(cod),
       servico_copa_cod_fk integer,
       foreign key (servico_copa_cod_fk) references Quarto(cod)
);

select * from Cliente;

describe Cliente;

insert into Cliente(rg,nome,telefone,endereco_comp) values
('mg.19.999.999','Ronodelson Periclez','(32)99999-9999','Rua das Catingas,450,Belo Horizonte'),
('mg.29.999.999','Florentina Periclez','(32)99999-9999','Rua das Catingas,450,Belo Horizonte'),
('mg.39.999.999','Ronaldo Periclez','(32)99999-9999','Rua das Catingas,450,Belo Horizonte'),
('mg.49.999.999','Felizberta Periclez','(32)99999-9999','Rua das Catingas,450,Belo Horizonte');








