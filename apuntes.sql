carregar el script desde dentro la terminal de psql o desde fuera
 -> desde dentro template1 => \i script.sql
 -> desde fuera $(bash terminal) psql template1 -f script.sql 
(siempre se pone template1 porque es la unica bdd que estamos seguros que ya existe)

Las sentencias son las siguientes

CREATE (crea)
DROP (borra)
ALTER (modifica)

Tipos de datos almacenados

VARCHAR (numbytes) => text
INT (4 bytes), SMALLINT (2 bytes), BIGINT (8 bytes) => números sencers
NUMERIC(E,D) => número amb part decimal fixa
BOOLEAN => true, false
DATE (dia,mes any), TIMESTAMP (dia,mes any, hores, minuts, segons)

Restricciones.
PRIMARY KEY (clau primària)
	CONSTRAINT cliente_dni_pk PRIMARY KEY (dni)
                \-> NOMBRE PK               \-> NOMBRE COLUMNA DE LA TABLA QUE ES PK


FOREIGN KEY (clau aliena)
    falta ejemplo


NOT NULL (no nul)
    falta ejemplo

UNIQUE (valor únic)
    falta ejemplo

CHECK (comprova que el camp acompleixi una condició)
 	estat VARCHAR(20) CHECK (estat IN ('obert', 'tancat')),
           \-> TIPO DE DATO A ALMACENAR
                        \-> CHECKEAMOS
                                \-> NOMBRE TABLA
                                            \-> PARAMETROS "(True, False)" o ('parametro1','parametro2')
