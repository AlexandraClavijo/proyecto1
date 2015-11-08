USE [ProtesisOrtesis]
GO

DROP VIEW DatosPersonales
GO
CREATE VIEW DatosPersonales
	AS
		SELECT
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			'Pacientes OR DGPA' AS Tabla
		FROM [dbo].[Pacientes]
	UNION ALL
		SELECT
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			'Pacientes OR DGPA' AS Tabla
		FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
GO

SELECT * FROM DatosPersonales;


INSERT INTO DatosPersonales
	(PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad )
VALUES
	('NELSON DAVID','RINCON CHOQUE','Masculino','2516627','nelsondavid645@hotmail.com','Cedula de Ciudadania','1014218466','3007572717','CARRERA 88#73-46','Bogota D.C.','Pacientes OR DGPA');



DROP TRIGGER TR_Tablas_Multiples_Insertar
GO
CREATE TRIGGER TR_Tablas_Multiples_Insertar
	ON [dbo].[DatosPersonales]
	AFTER INSERT
	AS
BEGIN
	INSERT INTO [dbo].[Pacientes] (PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad)
		SELECT
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad
		FROM INSERTED
		WHERE Tabla = 'Pacientes OR DGPA';

	INSERT INTO [dbo].[HC_Datos_Generales_Paciente_Anamnesis] (PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad)
		SELECT
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad
		FROM INSERTED
		WHERE Tabla = 'Pacientes OR DGPA';
END