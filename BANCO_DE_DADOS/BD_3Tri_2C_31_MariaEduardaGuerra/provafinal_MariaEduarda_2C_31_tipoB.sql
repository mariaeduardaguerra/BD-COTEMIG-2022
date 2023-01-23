create database dependentes_pf_e3_2022;
use dependentes_pf_e3_2022;

-- Liste todos os nomes dos empregados da empresa.
select nome from 'empregado';

-- Quantos dependentes existem?
select * from 'dependente';

-- Liste os empragdos que recebam mais de R$3000,00.
select * from 'empregado' where salario > 3000;

-- Refa�a o exerc�cio anterior ordenando do mais velho para o mais novo.
select * from 'empregado' order by idade;

-- Qual o dependente de c�digo 1?
select * from 'dependente' where cod_empregado = 1;

-- Quais dependentes t�m o nome terminado pela letra'A'?
select * from 'dependente' where nome = '%A';

-- Quais funcion�rios t�m as letras 'EU' no nome?
select * from 'empregado' where nome = '%EU%';

-- Qual empregado tem sal�rio entre R$4000 e R$9000?
select * from 'empregado' where salario > 4000 && < 9000;

-- Qual o maior sal�rio?
select * from 'empregado' where cod_salario = 1;

-- Qual a m�dia salarial da empresa?
select * from 'empregado' order by salario;