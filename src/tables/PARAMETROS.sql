--  Generate SQL 
--  Version:                   	V7R5M0 220415 
--  Generated on:              	11/02/22 20:24:40 
--  Relational Database:       	SEMILLAS 
--  Standards Option:          	Db2 for i 
CREATE TABLE JBUSTOS2.PARAMETROS ( 
	EMPRESA VARCHAR(100) CCSID 37 NOT NULL , 
	BIBTRA VARCHAR(10) CCSID 37 NOT NULL,
	COLAENTR VARCHAR(10) CCSID 37 NOT NULL , 
	COLARESP VARCHAR(10) CCSID 37 NOT NULL )   
	  
	RCDFMT PARAMETROS ; 
  
LABEL ON TABLE JBUSTOS2.PARAMETROS 
	IS 'Tabla de parametros generales' ; 
  
LABEL ON COLUMN JBUSTOS2.PARAMETROS 
( EMPRESA TEXT IS 'Nombre de la empresa' , 
    BIBTRA TEXT IS 'Biblioteca de trabajo' ,
	COLAENTR TEXT IS 'Cola de entrada' , 
	COLARESP TEXT IS 'Cola de respuesta' ) ; 
  
GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   
ON JBUSTOS2.PARAMETROS TO JBUSTOS WITH GRANT OPTION ; 
  