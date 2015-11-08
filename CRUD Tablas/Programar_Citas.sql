USE ProtesisOrtesis;
GO

IF object_id('Programar_Citas') IS NOT NULL DROP TABLE Programar_Citas;
CREATE TABLE Programar_Citas(
	CITA_ID INT IDENTITY(1,1) NOT NULL,
	INST_nombres VARCHAR(40) NOT NULL,
	INST_apellidos VARCHAR(40) NOT NULL,
	PACI_nombres VARCHAR(40) NOT NULL,
	PACI_apellidos VARCHAR(40) NOT NULL,
	PACI_tarjeta_dni VARCHAR(30) NOT NULL,
	PACI_numero_dni VARCHAR(30) NOT NULL,
	CITA_lugar VARCHAR(50) NOT NULL,
	CITA_fecha date NOT NULL,
	CITA_hora TIME NOT NULL,
	CITA_estado VARCHAR(50) NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE Programar_Citas
ADD CONSTRAINT PK_Programar_Citas
PRIMARY KEY (CITA_ID);
