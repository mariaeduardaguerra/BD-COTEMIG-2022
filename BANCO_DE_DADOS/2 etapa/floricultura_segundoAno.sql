create database Floricultura_2C;

use Floricultura_2C;

create table Cliente(
     rg char(13) not null primary key,
     nome varchar(80) not null,
     telefone char(15) not null,
     endereco_comp varchar(120) not null
);

create table Produto(
     cod_produto int not null primary key auto_increment,
     nome varchar(80) not null,
	 tipo varchar(80) not null,
     preco decimal(9,2) not null,
     qtd_estoque int not null
);
-- criar tabela com chave estrangeira

create table Item_pedido(
     cod_itempedido int not null primary key auto_increment,
     quantidade int not null,
     valor_total decimal(9,2),
     cod_produto_fk int not null,
     foreign key (cod_produto_fk) references Produto(cod_produto)
);

create table Pedidos(
	 cod_pedido int not null primary key auto_increment,
     dt_compra date not null,
     total_pedido decimal(9,2),
     rg_fk char(13) not null,
     foreign key (rg_fk) references Item_pedido(cod_itempedido),
     cod_itemPedido_fk int not null primary key auto_increment,
     foreign key (cod_itemPedido_fk) references Produto(cod_itempedido)
);




