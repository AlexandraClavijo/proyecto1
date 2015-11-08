USE ProtesisOrtesis;
GO

IF object_id('Pacientes') IS NOT NULL DROP TABLE Pacientes;
CREATE TABLE Pacientes(
	PACI_nombres VARCHAR(40),
	PACI_apellidos VARCHAR(40),
	PACI_genero VARCHAR(30),
	PACI_fecha_nacimiento DATE,
	PACI_telefono_principal VARCHAR(30),
	PACI_telefono_movil VARCHAR(30),
	PACI_direccion VARCHAR(100),
	PACI_ciudad VARCHAR(30),
	PACI_email VARCHAR(50),
	PACI_tarjeta_dni VARCHAR(30),
	PACI_numero_dni VARCHAR(30) NOT NULL,
	PACI_password VARCHAR(20),
	PACI_rol VARCHAR(30) DEFAULT 'Paciente',
	PACI_estado VARCHAR(30) DEFAULT 'Activo',
	PACI_fecha_registro DATE
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE Pacientes
ADD CONSTRAINT PK_Pacientes_PACI_numero_dni
PRIMARY KEY (PACI_numero_dni);

/*####################################################################################################*/
/*####################################################################################################*/

/*ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_nombres
UNIQUE (PACI_nombres);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_apellidos
UNIQUE (PACI_apellidos);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_genero
UNIQUE (PACI_genero);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_telefono_principal
UNIQUE (PACI_telefono_principal);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_telefono_movil
UNIQUE (PACI_telefono_movil);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_direccion
UNIQUE (PACI_direccion);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_ciudad
UNIQUE (PACI_ciudad);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_email
UNIQUE (PACI_email);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_tarjeta_dni
UNIQUE (PACI_tarjeta_dni);

ALTER TABLE Pacientes
ADD CONSTRAINT UK_Pacientes_PACI_numero_dni
UNIQUE (PACI_numero_dni);
*/