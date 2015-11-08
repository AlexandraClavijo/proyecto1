USE [ProtesisOrtesis]
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <13/09/2015>
-- Titule:		<CREATE TABLE: HC_Datos_Generales_Paciente_Anamnesis>
-- Description:	<Sin Documentar>
-- ==========================================================================================
IF object_id('[dbo].[HC_Datos_Generales_Paciente_Anamnesis]') IS NOT NULL DROP TABLE [dbo].[HC_Datos_Generales_Paciente_Anamnesis];
CREATE TABLE [dbo].[HC_Datos_Generales_Paciente_Anamnesis](
	HC_ID INT,
	HC_fecha_registro DATE,
	HC_registro INT,
	HC_codigo INT,

	PACI_nombres VARCHAR(40),
	PACI_apellidos VARCHAR(40),
	DGPA_eps VARCHAR(30),
	PACI_genero VARCHAR(30),
	DGPA_edad INT,
	DGPA_estatura VARCHAR(10),
	DGPA_peso VARCHAR(10),
	DGPA_estado_civil VARCHAR(30),
	PACI_telefono_principal VARCHAR(30),
	PACI_email VARCHAR(50),
	PACI_tarjeta_dni VARCHAR(30),
	PACI_numero_dni VARCHAR(30) NOT NULL,
	PACI_telefono_movil VARCHAR(30),
	PACI_direccion VARCHAR(100),
	PACI_ciudad VARCHAR(30)
);

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<ALTER TABLE: PRIMARY KEY>
-- Description:	<Sin Documentar>
-- ==========================================================================================
--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT PK_HC_Datos_Generales_Paciente_Anamnesis
--PRIMARY KEY (DGPA_ID);

ALTER TABLE [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
ADD CONSTRAINT PK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
PRIMARY KEY (PACI_numero_dni);

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<ALTER TABLE: FOREIGN KEY>
-- Description:	<Sin Documentar>
-- ==========================================================================================
/*ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
FOREIGN KEY (PACI_numero_dni) REFERENCES Pacientes (PACI_numero_dni)
	ON UPDATE CASCADE
	ON DELETE CASCADE;*/

/*ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_apellidos
FOREIGN KEY (PACI_apellidos) REFERENCES Pacientes (PACI_apellidos)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_genero
FOREIGN KEY (PACI_genero) REFERENCES Pacientes (PACI_genero)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_principal
FOREIGN KEY (PACI_telefono_principal) REFERENCES Pacientes (PACI_telefono_principal)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_email
FOREIGN KEY (PACI_email) REFERENCES Pacientes (PACI_email)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_tarjeta_dni
FOREIGN KEY (PACI_tarjeta_dni) REFERENCES Pacientes (PACI_tarjeta_dni)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
FOREIGN KEY (PACI_numero_dni) REFERENCES Pacientes (PACI_numero_dni)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_movil
FOREIGN KEY (PACI_telefono_movil) REFERENCES Pacientes (PACI_telefono_movil)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_direccion
FOREIGN KEY (PACI_direccion) REFERENCES Pacientes (PACI_direccion)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_ciudad
FOREIGN KEY (PACI_ciudad) REFERENCES Pacientes (PACI_ciudad)
	ON UPDATE CASCADE
	ON DELETE CASCADE;*/

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <13/09/2015>
-- Titule:		<ALTER TABLE: UNIQUE>
-- Description:	<Sin Documentar>
-- ==========================================================================================
--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_nombres
--UNIQUE (PACI_nombres);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_apellidos
--UNIQUE (PACI_apellidos);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_genero
--UNIQUE (PACI_genero);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_principal
--UNIQUE (PACI_telefono_principal);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_movil
--UNIQUE (PACI_telefono_movil);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_direccion
--UNIQUE (PACI_direccion);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_ciudad
--UNIQUE (PACI_ciudad);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_email
--UNIQUE (PACI_email);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_tarjeta_dni
--UNIQUE (PACI_tarjeta_dni);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
--UNIQUE (PACI_numero_dni);
