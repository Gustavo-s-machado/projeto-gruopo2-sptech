create database futebol;

use futebol;

create table usuario (
idusuario int primary key auto_increment,
nomeususario varchar(50) not null,
senhausuario varchar(30) not null,
cpfusuario char(11) not null,
celularusuario varchar(15) not null,
telefoneusuario varchar(15)
);

insert into usuario values
(null, 'Pedro', 'bananinha123', '33881122103', '1195339754', 44035506),
(null, 'Ana', 'rogervidaloka', '33229911776', '11959533246', null),
(null, 'Jose', '12344321', '22441166781', '11943255495', 997766500),
(null, 'paula', 'paulazinha222', '65749743931', '11944443382', 88540043);

select * from usuario;

create table estadio (
idestadio int primary key auto_increment,
nomeestadio varchar(50) not null,
cnpj char(14) not null,
cep char(8) not null, 
numeroestadio varchar(4) not null,
telefone varchar(15),
gramado varchar(10) constraint chkgramado check (gramado in ('Sintetico', 'Natural'))
);

insert into estadio value
(null, 'Morumbi', '12345678998765', '12345678', '033', '11967881799', 'Natural'),
(null, 'Neo Quimica', '11223344556677', '09330560', '4234', '11976617899', 'sintetico'),
(null, 'Alianz', '99887766554433', '01220440', '991', '119345168122', 'sintetico');

select * from estadio;

create table sensor (
idsensor int primary key auto_increment,
nomesensor varchar(30) not null,
tiposensor varchar(30) not null,
capturasensor double,
estadosensor tinyint,
dtatualsensor datetime default current_timestamp
);

insert into sensor (nomesensor, tiposensor, capturasensor, estadosensor) values
('sensor de temperatura', 'temperatura',26.6,  0), 
('sensor de umidade', 'umidade', 20.1, 1);

select * from sensor;


create table equipamentos (
idequipamentos int primary key auto_increment,
nomeequipamento varchar(40) not null,
qntequipamento int not null,
precoequipamento decimal(5,2),
dtequipamento date
);

insert into equipamentos values
(null, 'Irrigador', 5, 399.99, '2020-06-22'),
(null, 'drenador', 10, 599.99, '2020-08-22');

select * from equipamentos;