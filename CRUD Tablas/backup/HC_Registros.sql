USE ProtesisOrtesis;
GO

IF object_id('HC_Registros') IS NOT NULL DROP TABLE HC_Registros;
CREATE TABLE HC_Registros(
	HC_ID INT IDENTITY(1,1) NOT NULL,
	HC_fecha_registro DATE NOT NULL,
	HC_registro INT NOT NULL,
	HC_codigo INT NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE HC_Registros
ADD CONSTRAINT PK_HC_Registros
PRIMARY KEY (HC_ID);
