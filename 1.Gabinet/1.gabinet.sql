DROP DATABASE IF EXISTS gabinet;
CREATE DATABASE gabinet;
\c gabinet


CREATE TABLE client (
	dni CHAR(9) CONSTRAINT client_dni_pk PRIMARY KEY,
	nomclient VARCHAR(20),
	adreca VARCHAR(40),
	telefon VARCHAR(13) -- telefonos internacionales 
);

CREATE TABLE procurador (
	dniProcurador CHAR(9) CONSTRAINT procurador_dni_pk PRIMARY KEY,
	nomP VARCHAR(20),
	adreca VARCHAR(40),
	telefon VARCHAR(13), -- telefonos internacionales 
	CONSTRAINT procurador_nomP_uk UNIQUE(nomP)
);

CREATE TABLE assumpte (
	numExpedient CHAR(9) CONSTRAINT assumpte_numExpedient_pk PRIMARY KEY,
	dataInici DATE,
	dataArxiu DATE,
	estat VARCHAR(20) CHECK (estat IN ('obert', 'tancat')),
	dni CHAR(9),
	CONSTRAINT fk_client FOREIGN KEY (dni) REFERENCES client(dni)
);


CREATE TABLE assumptexprocurador (
	numExpedient CHAR(9),
	dniProcurador CHAR(9),
	CONSTRAINT assumpteXprocurador_composta_fk PRIMARY KEY (numExpedient, dniProcurador), 
	--Claves Foráneas
	CONSTRAINT fk_assumpte	FOREIGN KEY (numExpedient) REFERENCES assumpte(numExpedient),
	CONSTRAINT fk_procurador FOREIGN KEY (dniprocurador) REFERENCES procurador(dniprocurador)
);