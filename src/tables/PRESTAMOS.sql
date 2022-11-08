--  Generate SQL 
--  Version:                   	V7R5M0 220415 
--  Generated on:              	11/02/22 20:31:13 
--  Relational Database:       	SEMILLAS 
--  Standards Option:          	Db2 for i 
CREATE TABLE JBUSTOS2.PRESTAMOS ( 
	NUMPRESTAMO FOR COLUMN NUMPR00001 NUMERIC(10, 0) NOT NULL , 
	TIPOPRE NUMERIC(3, 0) NOT NULL , 
	CEDULA VARCHAR(15) CCSID 37 NOT NULL , 
	PLAZO NUMERIC(3, 0) NOT NULL , 
	FECPRESTAMO FOR COLUMN FECPR00001 DATE NOT NULL , 
	MONTO NUMERIC(13, 2) NOT NULL , 
	SALDO NUMERIC(13, 2) NOT NULL , 
	TASA NUMERIC(6, 4) NOT NULL , 
	INTDIARO NUMERIC(13, 2) NOT NULL , 
	PROXPAGO DATE NOT NULL , 
	USUCREO VARCHAR(10) CCSID 37 NOT NULL , 
	FECCREO DATE NOT NULL , 
	USUMOD VARCHAR(10) CCSID 37 NOT NULL , 
	FECMOD DATE NOT NULL )   
	  
	RCDFMT PRESTAMOS  ; 
  
ALTER TABLE JBUSTOS2.PRESTAMOS 
	ADD CONSTRAINT JBUSTOS2.Q_JBUSTOS2_PRESTAMOS_NUMPR00001_00001 
	UNIQUE( NUMPRESTAMO ) ; 
  
LABEL ON TABLE JBUSTOS2.PRESTAMOS 
	IS 'Tabla de prestamos' ; 
  
LABEL ON COLUMN JBUSTOS2.PRESTAMOS 
( NUMPRESTAMO IS 'NumPrestamo          ' , 
	TIPOPRE IS 'TipoPre              ' , 
	CEDULA IS 'Cedula               ' , 
	PLAZO IS 'Plazo                ' , 
	FECPRESTAMO IS 'FecPrestamo          ' , 
	MONTO IS 'Monto                ' , 
	SALDO IS 'Saldo                ' , 
	TASA IS 'Tasa                 ' , 
	INTDIARO IS 'IntDiaro             ' , 
	PROXPAGO IS 'ProxPago             ' , 
	USUCREO IS 'UsuCreo              ' , 
	FECCREO IS 'FecCreo              ' , 
	USUMOD IS 'UsuMod               ' , 
	FECMOD IS 'FecMod               ' ) ; 
  
LABEL ON COLUMN JBUSTOS2.PRESTAMOS 
( NUMPRESTAMO TEXT IS 'Número de préstamo' , 
	TIPOPRE TEXT IS 'Tipo de préstamo FK' , 
	CEDULA TEXT IS 'Cédula de identidad' , 
	PLAZO TEXT IS 'Plazo en Meses' , 
	FECPRESTAMO TEXT IS 'Fecha del préstamo' , 
	MONTO TEXT IS 'Monto original del préstamo' , 
	SALDO TEXT IS 'Saldo Actual' , 
	TASA TEXT IS 'Tasa de interés' , 
	INTDIARO TEXT IS 'Acumulados intereses diario' , 
	PROXPAGO TEXT IS 'Fecha de próximo pago' , 
	USUCREO TEXT IS 'Usuario que creo' , 
	FECCREO TEXT IS 'Fecha de creación' , 
	USUMOD TEXT IS 'Ultimo usuario que modifico' , 
	FECMOD TEXT IS 'Fecha de última modificación' ) ; 
  
GRANT ALTER , DELETE , INDEX , INSERT , REFERENCES , SELECT , UPDATE   
ON JBUSTOS2.PRESTAMOS TO JBUSTOS WITH GRANT OPTION ; 
  
