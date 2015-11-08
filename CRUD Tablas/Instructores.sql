USE ProtesisOrtesis;
GO

IF object_id ('Instructores') IS NOT NULL DROP TABLE Instructores;
CREATE TABLE Instructores(
	/*INST_ID INT IDENTITY(1,1) NOT NULL,*/
	INST_nombres VARCHAR(40) NOT NULL,
	INST_apellidos VARCHAR(40) NOT NULL,
	INST_genero VARCHAR(30) NOT NULL,
	INST_fecha_nacimiento DATE NOT NULL,
	INST_telefono_principal VARCHAR(30) NOT NULL,
	INST_telefono_movil VARCHAR(30) NOT NULL,
	INST_direccion VARCHAR(100) NOT NULL,
	INST_ciudad VARCHAR(30) NOT NULL,
	INST_email VARCHAR(50) NOT NULL,
	INST_password VARCHAR(20) NOT NULL,
	INST_tarjeta_dni VARCHAR(30) NOT NULL,
	INST_numero_dni VARCHAR(30) NOT NULL,
	INST_cargo VARCHAR(30) NOT NULL,
	INST_profesion VARCHAR(30) NOT NULL,
	INST_rol VARCHAR(30) DEFAULT 'Instructor',
	INST_estado VARCHAR(30) DEFAULT 'Activo',
	INST_fecha_registro DATE NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE Instructores
ADD CONSTRAINT PK_Instructores
PRIMARY KEY (INST_numero_dni);
