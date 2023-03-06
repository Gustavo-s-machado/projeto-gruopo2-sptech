create database sprint1;
use sprint1;

create table usuario (
	idUsuario int primary key auto_increment,
	nome varchar(60) not null,
	CPF char(11) not null,
    cnpj char(14) not null,
	senha varchar(30)
);

create table zoologico (
	idZologico int primary key auto_increment,
	nome varchar(50) not null,
	cep char(8) not null,
	numero int not null,
	complemento varchar(20),
    qtd_aquarios int not null
);
    
create table aquario (
	idAquario int primary key auto_increment,
    tipo_agua varchar(50) not null,
    tipo_peixe varchar(50) not null
);

create table sensor_temp (
	idSensor int primary key auto_increment,
    temperatura double,
    dtHora datetime default current_timestamp
);

create table iluminacao (
	idSensor int primary key auto_increment,
    luminozidade double,
    dtHora datetime default current_timestamp
);
    

