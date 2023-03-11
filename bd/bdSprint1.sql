USE sprint1;

CREATE TABLE cliente(
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(100) CONSTRAINT chkEmail CHECK (email LIKE '%@.com%')
);

CREATE TABLE estadio(
	idEstadio INT PRIMARY KEY AUTO_INCREMENT,
    estadoEstadio VARCHAR (40),
    nomeEstadio VARCHAR (40),
    sistemaDrenagem VARCHAR(100),
    sistemaIrrigacao VARCHAR(100)
);

CREATE TABLE sensores (
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    tipoSensor VARCHAR(20),
    setorSensor VARCHAR(40),
    estadoAtual TINYINT CONSTRAINT chkEstadoAtual CHECK ( estadoAtual IN ( 0, 1))
);

CREATE TABLE dadosSensor (
	idCaptura INT PRIMARY KEY AUTO_INCREMENT,
    dataCaptura DATETIME,
    umidade DOUBLE,
    temperatura DOUBLE
);


