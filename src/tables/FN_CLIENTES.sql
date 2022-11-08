﻿--  Generate SQL 
--  Version:                   	V7R5M0 220415 
--  Generated on:              	10/25/22 22:12:49 
--  Relational Database:       	PUB400 
--  Standards Option:          	Db2 for i 
SET PATH "QSYS","QSYS2","SYSPROC","SYSIBMADM","JBUSTOS2" ; 
  
CREATE OR REPLACE FUNCTION JBUSTOS2.FN_CLIENTES ( 
	PPAGINA INTEGER , 
	PREGXPANTALLA INTEGER,
    PCEDULA CHAR(10),
    PNOMBRE CHAR(30) ) 
RETURNS TABLE ( 
	CEDULA CHAR(10), 
	NOMBRE CHAR(30),
    SALARIO NUMERIC(15,2) 
)   
	LANGUAGE SQL 
	SPECIFIC JBUSTOS2.FN_CLIENTES 
	NOT DETERMINISTIC 
	READS SQL DATA 
	CALLED ON NULL INPUT 
	ALLOW PARALLEL 
	CONCURRENT ACCESS RESOLUTION DEFAULT 
	SET OPTION  ALWBLK = *ALLREAD , 
	ALWCPYDTA = *OPTIMIZE , 
	COMMIT = *NONE , 
	DECRESULT = (31, 31, 00) , 
	DFTRDBCOL = JBUSTOS2 , 
	DYNDFTCOL = *NO , 
	DYNUSRPRF = *USER , 
	SRTSEQ = *HEX   
	BEGIN 
RETURN WITH CLIENTES AS ( SELECT ROWNUMBER ( ) OVER ( ) AS NUMERO , CEDULA , NOMBRE, SALARIO
FROM SECLIMAE ORDER BY CEDULA ) 
SELECT CEDULA , NOMBRE, SALARIO FROM CLIENTES 
WHERE NUMERO BETWEEN PPAGINA * PREGXPANTALLA - ( PREGXPANTALLA - 1 ) AND (PPAGINA * PREGXPANTALLA) + 1
AND (LENGTH(TRIM(PCEDULA))=0 OR LOCATE(TRIM(PCEDULA),CEDULA)=1) 
AND (LENGTH(TRIM(PNOMBRE))=0 OR LOCATE(TRIM(PNOMBRE),NOMBRE)=1); 
END  ; 
  
COMMENT ON PARAMETER SPECIFIC FUNCTION JBUSTOS2.FN_CLIENTES 
( PPAGINA IS 'NUMERO DE PAGINA' , 
	PREGXPANTALLA IS 'REGISTROS POR PANTALLA',
    PCEDULA IS 'FILTRO POR CEDULA',
    PNOMBRE IS 'FILTRO POR NOMBRE' ) ; 
  
LABEL ON SPECIFIC FUNCTION JBUSTOS2.FN_CLIENTES 
	IS 'FUNCION PARA PAGINAR CLIENTES' ; 
  
GRANT ALTER , EXECUTE   
ON SPECIFIC FUNCTION DEVXWEBB.FN_CLIENTES 
TO DEVXWEB WITH GRANT OPTION ; 
  

  SELECT * FROM SECLIMAE