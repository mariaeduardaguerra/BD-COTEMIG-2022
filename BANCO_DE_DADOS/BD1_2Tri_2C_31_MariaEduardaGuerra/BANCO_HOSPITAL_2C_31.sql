create database HOSPITAL_2C_31;
use HOSPITAL_2C_31;

create table medico (
     cod_med int not null primary key auto_increment,
     nome varchar(80) not null,
     especialidade varchar(45) not null
);

create table paciente (
	cod_paciente int not null primary key auto_increment,
	nome varchar(80) not null,
	dt_nasc date not null,
    peso float(3.3),
    altura_cm int not null,
    sintomas varchar(200)
);

create table consulta (
     cod_consulta int not null primary key auto_increment,
     dt_consulta date not null,
     medico_cod_med int not null,
	 paciente_cod_paciente int not null,
	 foreign key (medico_cod_med) references medico(cod_med),
	 foreign key (paciente_cod_paciente) references paciente(cod_paciente)
);

create table medicamento (
	 cod_medicameto int not null primary key auto_increment,
	 nome_medicamento varchar(45) not null,
     modo_uso varchar(80) not null
);

create table prescricao (
     cod_pres int not null primary key auto_increment,
     observacao text not null,
     dosagem varchar(60) not null,
	 medicamento_cod_med int not null,
     consulta_cod_consulta int not null,
	 foreign key (medicamento_cod_med) references medicamento(cod_medicamento),
	 foreign key (consulta_cod_consulta) references consulta(cod_consulta)
);

-- b) Faça a inserção de registros por tabela, respeitando o tipo de informação que cada tabela irá armazenar.

insert into medico values
(default,'1','Médico 01','Especialidade 01'),
(default,'2','Médico 02','Especialidade 02'),
(default,'3','Médico 03','Especialidade 03'),
(default,'4','Médico 04','Especialidade 04'),
(default,'5','Médico 05','Especialidade 05');

select * from medico;

insert into paciente values
(default,'1','Paciente 01','2023-01-01','50','1.60','Sintoma 01'),
(default,'2','Paciente 02','2023-02-01','60','1.70','Sintoma 02'),
(default,'3','Paciente 03','2023-03-01','70','1.80','Sintoma 03'),
(default,'4','Paciente 04','2023-04-01','80','1.90','Sintoma 04'),
(default,'5','Paciente 05','2023-05-01','90','1.50','Sintoma 05');

select * from paciente;

insert into consulta values
(default,'1','2023-01-01',3,1),
(default,'2','2023-02-01',1,2),
(default,'3','2023-03-01',2,3),
(default,'4','2023-04-01',2,4),
(default,'5','2023-05-01',2,5);

select * from consulta;

insert into medicamento values
(default,'1','Medicamento 01','Modo 01'),
(default,'2','Medicamento 02','Modo 02'),
(default,'3','Medicamento 03','Modo 03'),
(default,'4','Medicamento 04','Modo 04'),
(default,'5','Medicamento 05','Modo 05');

select * from medicamento;

insert into prescricao values
(default,'1','Prescrição 01','Observação 01','Dosagem 01',4,5),
(default,'2','Prescrição 02','Observação 02','Dosagem 02',1,3),
(default,'3','Prescrição 03','Observação 03','Dosagem 03',2,5),
(default,'4','Prescrição 04','Observação 04','Dosagem 04',3,4),
(default,'5','Prescrição 05','Observação 05','Dosagem 05',4,1);

select * from prescricao;

-- c) Exclua os dois últimos registros de cada tabela.

delete from medico where cod_med = 4;
delete from medico where cod_med = 5;

delete from paciente where cod_paciente = 4;
delete from paciente where cod_paciente = 5;

delete from consulta where cod_consulta = 4;
delete from consulta where cod_consulta = 5;

delete from medicamento where cod_medicamento = 4;
delete from medicamento where cod_medicamento = 5;

delete from prescricao where cod_pres = 4;
delete from prescricao where cod_pres = 5;

-- d) A sua escolha, atualize um dado de cada tabela.

select * from medico;

update medico set nome = 'Médico 001' where cod_med = 1;


select * from paciente;

update paciente set nome = 'Paciente 001' where cod_paciente = 1;


select * from consulta;

update consulta set dt_consulta = '2025-03-30' where cod_consulta = 1;


select * from medicamento;

update medicamento set nome_medicamento = 'Medicamento 001' where cod_medicamento = 1;


select * from prescricao;

update prescricao set dosagem = 'Dosagem 001' where cod_pres = 1;














