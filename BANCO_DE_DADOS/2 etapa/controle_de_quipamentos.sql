create database controle_de_equipamentos_ti;
use controle_de_equipamentos_ti;
create table departamento(
 id_departamento integer not null primary key auto_increment,
 nome varchar(80) not null
);

create table equipamentos(
 id_equipamentos integer not null primary key auto_increment,
 CP varchar(45) not null,
 impressoras varchar(45) not null,
 modem varchar(45) not null,
 DEPARTAMENTO_id_departamento integer not null,
 foreign key (DEPARTAMENTO_id_departamento) references departamento(id_departamento)
);

create table empregado(
 id_empregado integer not null primary key auto_increment,
 cargo varchar(45) not null,
 nome varchar(80) not null,
 DEPARTAMENTO_id_departamento integer not null,
 foreign key (DEPARTAMENTO_id_departamento) references departamento(id_departamento)
);

create table manutencao(
 id_manutencao integer not null primary key auto_increment,
 dt date not null,
 EQUIPAMENTOS_id_equipamentos integer not null,
 EMPREGADOS_id_empregados integer not null,
 foreign key (EQUIPAMENTOS_id_equipamentos) references equipamentos(id_equipamentos),
 foreign key (EMPREGADOS_id_empregados) references empregado(id_empregados)
);

select * from departamento;
describe deparatmento;
insert into departamento(id_departamento,nome) values
('01','Departamento01'),
('02','Departamento02'),
('03','Departamento03'),
('04','Departamento04'),
('05','Departamento05');

select * from equipamentos;
describe equipamentos;
insert into equipamentos(id_equipamentos,CP,impressoras,modem,DEPARTAMENTO_id_departamento) values
('01','Equipamento01','Impressora01','Modem01','001'),
('02','Equipamento02','Impressora02','Modem02','002'),
('03','Equipamento03','Impressora03','Modem03','003'),
('04','Equipamento04','Impressora04','Modem04','004'),
('05','Equipamento05','Impressora05','Modem05','005');

select * from empregado;
describe empregado;
insert into empregado(id_empregado,cargo,nome,DEPARTAMENTO_id_departamento) values
('01','Cargo01','Nome01','0001'),
('02','Cargo02','Nome02','0002'),
('03','Cargo03','Nome03','0003'),
('04','Cargo04','Nome04','0004'),
('05','Cargo05','Nome05','0005');

select * from manutencao;
describe manutencao;
insert into manutencao(id_manutencao,dt,EQUIPAMENTOS_id_equipamentos,EMPREGADO_id_empregado) values
('01','01/01/01','000001','00001'),
('02','02/02/02','000002','00002'),
('03','03/03/03','000003','00003'),
('04','04/04/04','000004','00004'),
('05','05/05/05','000005','00005');






























