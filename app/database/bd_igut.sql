create database bd_igut;
use bd_igut;
create table Produtos(
	id int not null auto_increment,
    nome varchar(100) not null,
    marca varchar(50) not null,
    categoria varchar(50) not null,
    dt_cadastro datetime not null,
    primary key(id)
);