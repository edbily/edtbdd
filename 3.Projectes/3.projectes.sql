\c template1
DROP DATABASE IF EXISTS projectes ;
CREATE DATABASE projectes;
\c projectes

-- SCRIPT SQL 
-- Echo por Bilal Balghouch con identificador a241482bb
-- Escola del treball
-- Version 0.1
-- https://github.com/edbily

CREATE TABLE Departament(
    IdDepartament smallint CONSTRAINT DepartamentPK PRIMARY KEY,
    nom VARCHAR(30) CONSTRAINT NomDepartamentNN not null
);

CREATE TABLE Empleat(
    
);