\c template1
DROP DATABASE IF EXISTS zoos;
CREATE DATABASE zoos;
\c zoos

-- SCRIPT SQL 
-- Echo por Bilal Balghouch con identificador a241482bb
-- Escola del treball
-- Version final 1.0
-- https://github.com/edbily

-- Crear la tabla zoologic
CREATE TABLE zoologic (
    idzoo SMALLINT,
    nom VARCHAR(10),
    ubicacio VARCHAR(20),
    mida VARCHAR(20),
    pressupost INT,
    CONSTRAINT zoologic_idzoo_pk PRIMARY KEY (idzoo)
);

-- Crear la tabla especie
CREATE TABLE especie (
    idespecie SMALLINT,
    nomvulgar VARCHAR(20),
    nomcientific VARCHAR(50),
    familia VARCHAR(20),
    perillextincio BOOLEAN,
    CONSTRAINT especie_idespecie_pk PRIMARY KEY (idespecie)
);

-- Crear la tabla animal
CREATE TABLE animal (
    idanimal VARCHAR(10),
    idzoo SMALLINT,
    sexe VARCHAR(15),
    datanaixement DATE,
    origen VARCHAR(30),
    idespecie SMALLINT,
    CONSTRAINT animal_idanimal_idzoo_pk PRIMARY KEY (idanimal, idzoo),
    CONSTRAINT animal_idzoo_fk FOREIGN KEY (idzoo) REFERENCES zoologic (idzoo),
    CONSTRAINT animal_idespecie_fk FOREIGN KEY (idespecie) REFERENCES especie (idespecie),
    CONSTRAINT animal_check_sexe CHECK (sexe IN ('Home', 'Dona', 'No Aplica', 'Hermafrodita'))
);

-- Insertar datos en zoologic
INSERT INTO zoologic VALUES (1, 'ZooNord', 'Barcelona', 'Gran', 500000);
INSERT INTO zoologic VALUES (2, 'ZooSud', 'Madrid', 'Mitjà', 300000);
INSERT INTO zoologic VALUES (3, 'ZooEst', 'Valencia', 'Petit', 150000);
INSERT INTO zoologic VALUES (4, 'ZooOest', 'Sevilla', 'Gran', 450000);
INSERT INTO zoologic VALUES (5, 'ZooCentral', 'Bilbao', 'Mitjà', 320000);

-- Insertar datos en especie
INSERT INTO especie VALUES (1, 'Tigre', 'Tigre común', 'Felinos', TRUE);
INSERT INTO especie VALUES (2, 'Leon', 'Leon común', 'Felinos', FALSE);
INSERT INTO especie VALUES (3, 'Elefante', 'Elefante africano', 'Elefantes', TRUE);
INSERT INTO especie VALUES (4, 'Jirafa', 'Jirafa común', 'Jirafas', FALSE);
INSERT INTO especie VALUES (5, 'Pajaro azul', 'Pajaro azul', 'Pajaros', TRUE);

-- Insertar datos en animal
INSERT INTO animal VALUES ('A001', 1, 'Home', '2018-05-15', 'Àfrica', 1);
INSERT INTO animal VALUES ('A002', 2, 'Dona', '2019-03-22', 'Àsia', 2);
INSERT INTO animal VALUES ('A003', 3, 'Hermafrodita', '2020-07-10', 'Amèrica', 3);
INSERT INTO animal VALUES ('A004', 4, 'No Aplica', '2015-01-01', 'Europa', 4);
INSERT INTO animal VALUES ('A005', 5, 'Dona', '2021-10-11', 'Oceania', 5);
