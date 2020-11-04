/******************************************************************************/
/****              Generated by IBExpert 06/04/2020 16:24:04               ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/


/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/


CREATE GENERATOR GEN_USUARIO_ID;

CREATE TABLE USUARIO (
    ID      INTEGER,
    NOME    VARCHAR(60),
    EMAIL   VARCHAR(150),
    LOGIN   VARCHAR(30),
    SENHA   VARCHAR(20),
    PERFIL  VARCHAR(20)
);




/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: USUARIO_BI */
CREATE OR ALTER TRIGGER USUARIO_BI FOR USUARIO
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_usuario_id,1);
end
^

SET TERM ; ^



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/

