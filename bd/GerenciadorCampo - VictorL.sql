USE sprint1;

CREATE TABLE sensores (
	idSensor VARCHAR(50) PRIMARY KEY,
    tipoSensor VARCHAR(20),
    localizacao VARCHAR(40),
    estado TINYINT CONSTRAINT chkEstado CHECK(estado IN(0, 1))
);

CREATE TABLE dadosSensor (
	idCaptura INT PRIMARY KEY AUTO_INCREMENT,
    dataCaptura DATETIME,
    umidade SMALLINT,
    temperatura SMALLINT
    -- FK sensor correspondente
);

CREATE TABLE estadio (
	idEstadio INT PRIMARY KEY AUTO_INCREMENT,
    estadoEstadio VARCHAR(40),
    nomeEstadio VARCHAR(40),
    sistemaDrenagem VARCHAR(100),
    sistemIrrigacao VARCHAR(100)
    -- FK usuario
);

CREATE TABLE controle (
	idControle INT PRIMARY KEY AUTO_INCREMENT,
    dataOperacao DATETIME,
    tipoOperacao INT CONSTRAINT chkTipoOperacao CHECK(tipoOperacao IN(0, 1))
);

CREATE TABLE cliente (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(20),
    telefone VARCHAR(20),
    comprasFeitas VARCHAR(100)
    -- FK ESTADIO LIGADO A ESSE CLIENTE
);

