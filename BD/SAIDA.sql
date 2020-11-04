/******************************************************************************/
/****              Generated by IBExpert 06/04/2020 13:34:11               ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/


/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GENERATOR_IDSAIDA;

CREATE TABLE SAIDA (
    SAIDA       DATE,
    CPRODUTO    INTEGER,
    QUANTIDADE  INTEGER,
    VPRODUTO    DOUBLE PRECISION,
    SETOR       VARCHAR(50),
    NPRODUTO    VARCHAR(40),
    PATRIMONIO  VARCHAR(5),
    USUARIO     VARCHAR(40),
    ID          INTEGER
);




/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: SAIDATRIGGER1 */
CREATE OR ALTER TRIGGER SAIDATRIGGER1 FOR SAIDA
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
    NEW.ID = GEN_ID( GENERATOR_IDSAIDA, 1 );
END
^

SET TERM ; ^



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/

