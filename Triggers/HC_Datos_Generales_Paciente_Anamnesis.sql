USE [ProtesisOrtesis]
GO

SP_HELPTRIGGER HC_Datos_Generales_Paciente_Anamnesis;

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: HC_Datos_Generales_Paciente_Anamnesis: Insertar>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_Instead_Of_Insetar]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_Instead_Of_Insetar]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	INSTEAD OF INSERT
	AS
BEGIN
	DECLARE
		@PACI_NOMBRES_2 VARCHAR(40),
		@PACI_APELLIDOS_2 VARCHAR(40),
		@DGPA_EPS_2 VARCHAR(30),
		@PACI_GENERO_2 VARCHAR(30),
		@DGPA_EDAD_2 INT,
		@DGPA_ESTATURA_2 VARCHAR(10),
		@DGPA_PESO_2 VARCHAR(10),
		@DGPA_ESTADO_CIVIL_2 VARCHAR(30),
		@PACI_TELEFONO_PRINCIPAL_2 VARCHAR(30),
		@PACI_EMAIL_2 VARCHAR(50),
		@PACI_TARJETA_DNI_2 VARCHAR(30),
		@PACI_NUMERO_DNI_2 VARCHAR(30),
		@PACI_TELEFONO_MOVIL_2 VARCHAR(30),
		@PACI_DIRECCION_2 VARCHAR(100),
		@PACI_CIUDAD_2 VARCHAR(30),

		@MENSAJE_ERROR_1 VARCHAR(255) = 'El email ya se encuentra registrado',
		@MENSAJE_ERROR_2 VARCHAR(255) = 'El numero dni ya se encuentra registrado',
		@MENSAJE_SUCCESS VARCHAR(255) = 'El dato fue insertado correctamente';
	SELECT
		@PACI_NOMBRES_2 = PACI_nombres,
		@PACI_APELLIDOS_2 = PACI_apellidos,
		@DGPA_EPS_2 = DGPA_eps,
		@PACI_GENERO_2 = PACI_genero,
		@DGPA_EDAD_2 = DGPA_edad,
		@DGPA_ESTATURA_2 = DGPA_estatura,
		@DGPA_PESO_2 = DGPA_peso,
		@DGPA_ESTADO_CIVIL_2 = DGPA_estado_civil,
		@PACI_TELEFONO_PRINCIPAL_2 = PACI_telefono_principal,
		@PACI_EMAIL_2 = PACI_email,
		@PACI_TARJETA_DNI_2 = PACI_tarjeta_dni,
		@PACI_NUMERO_DNI_2 = PACI_numero_dni,
		@PACI_TELEFONO_MOVIL_2 = PACI_telefono_movil,
		@PACI_DIRECCION_2 = PACI_direccion,
		@PACI_CIUDAD_2 = PACI_ciudad
	FROM INSERTED

	IF NOT EXISTS (SELECT PACI_email,PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_email = @PACI_EMAIL_2 OR PACI_numero_dni = @PACI_NUMERO_DNI_2)
		BEGIN
			INSERT INTO [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				( PACI_nombres, PACI_apellidos, DGPA_eps, PACI_genero, DGPA_edad, DGPA_estatura, DGPA_peso, DGPA_estado_civil, PACI_telefono_principal, PACI_email, PACI_tarjeta_dni, PACI_numero_dni, PACI_telefono_movil, PACI_direccion, PACI_ciudad )
			VALUES
				( @PACI_NOMBRES_2, @PACI_APELLIDOS_2, @DGPA_EPS_2, @PACI_GENERO_2, @DGPA_EDAD_2, @DGPA_ESTATURA_2, @DGPA_PESO_2, @DGPA_ESTADO_CIVIL_2, @PACI_TELEFONO_PRINCIPAL_2, @PACI_EMAIL_2, @PACI_TARJETA_DNI_2, @PACI_NUMERO_DNI_2, @PACI_TELEFONO_MOVIL_2, @PACI_DIRECCION_2, @PACI_CIUDAD_2 )

			SELECT @MENSAJE_SUCCESS;
			PRINT @MENSAJE_SUCCESS;
		END
	ELSE IF EXISTS (SELECT PACI_email,PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_email = @PACI_EMAIL_2)
		BEGIN
			SELECT @MENSAJE_ERROR_1;
			PRINT @MENSAJE_ERROR_1;
		END
	ELSE IF EXISTS (SELECT PACI_email,PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUMERO_DNI_2)
		BEGIN
			SELECT @MENSAJE_ERROR_2;
			PRINT @MENSAJE_ERROR_2;
		END
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: HC_Datos_Generales_Paciente_Anamnesis: Eliminar Numero DNI>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_Instead_Of_Actualizar]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_Instead_Of_Actualizar]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	INSTEAD OF UPDATE
	AS
BEGIN
	SET NOCOUNT ON

	DECLARE
		@PACI_NOMBRES_2 VARCHAR(40),
		@PACI_APELLIDOS_2 VARCHAR(40),
		@DGPA_EPS_2 VARCHAR(30),
		@PACI_GENERO_2 VARCHAR(30),
		@DGPA_EDAD_2 INT,
		@DGPA_ESTATURA_2 VARCHAR(10),
		@DGPA_PESO_2 VARCHAR(10),
		@DGPA_ESTADO_CIVIL_2 VARCHAR(30),
		@PACI_TELEFONO_PRINCIPAL_2 VARCHAR(30),
		@PACI_EMAIL_2 VARCHAR(50),
		@PACI_TARJETA_DNI_2 VARCHAR(30),
		@PACI_NUMERO_DNI_2 VARCHAR(30),
		@PACI_TELEFONO_MOVIL_2 VARCHAR(30),
		@PACI_DIRECCION_2 VARCHAR(100),
		@PACI_CIUDAD_2 VARCHAR(30),

		@MENSAJE_ERROR_1 VARCHAR(255) = 'El dato solicitado a actualizar no se encuentra registrado',
		@MENSAJE_SUCCESS VARCHAR(255) = 'El dato fue actualizado correctamente';
	SELECT
		@PACI_NOMBRES_2 = INSERTED.PACI_nombres,
		@PACI_APELLIDOS_2 = INSERTED.PACI_apellidos,
		@DGPA_EPS_2 = INSERTED.DGPA_eps,
		@PACI_GENERO_2 = INSERTED.PACI_genero,
		@DGPA_EDAD_2 = INSERTED.DGPA_edad,
		@DGPA_ESTATURA_2 = INSERTED.DGPA_estatura,
		@DGPA_PESO_2 = INSERTED.DGPA_peso,
		@DGPA_ESTADO_CIVIL_2 = INSERTED.DGPA_estado_civil,
		@PACI_TELEFONO_PRINCIPAL_2 = INSERTED.PACI_telefono_principal,
		@PACI_EMAIL_2 = INSERTED.PACI_email,
		@PACI_TARJETA_DNI_2 = INSERTED.PACI_tarjeta_dni,
		@PACI_NUMERO_DNI_2 = INSERTED.PACI_numero_dni,
		@PACI_TELEFONO_MOVIL_2 = INSERTED.PACI_telefono_movil,
		@PACI_DIRECCION_2 = INSERTED.PACI_direccion,
		@PACI_CIUDAD_2 = INSERTED.PACI_ciudad
	FROM INSERTED

	IF EXISTS (SELECT PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUMERO_DNI_2)
		BEGIN
			UPDATE [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				SET
					PACI_nombres = @PACI_NOMBRES_2,
					PACI_apellidos = @PACI_APELLIDOS_2,
					DGPA_eps = @DGPA_EPS_2,
					PACI_genero = @PACI_GENERO_2,
					DGPA_edad = @DGPA_EDAD_2,
					DGPA_estatura = @DGPA_ESTATURA_2,
					DGPA_peso = @DGPA_PESO_2,
					DGPA_estado_civil = @PACI_TELEFONO_PRINCIPAL_2,
					PACI_telefono_principal = @PACI_TELEFONO_PRINCIPAL_2,
					PACI_email = @PACI_EMAIL_2,
					PACI_tarjeta_dni = @PACI_TARJETA_DNI_2,
					
					PACI_telefono_movil = @PACI_TELEFONO_MOVIL_2,
					PACI_direccion = @PACI_DIRECCION_2,
					PACI_ciudad = @PACI_CIUDAD_2
				FROM INSERTED
				WHERE INSERTED.PACI_numero_dni = @PACI_NUMERO_DNI_2
			
			SELECT @MENSAJE_SUCCESS;
			PRINT @MENSAJE_SUCCESS;
					
		END
	ELSE IF NOT EXISTS (SELECT PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUMERO_DNI_2)
		BEGIN
			SELECT @MENSAJE_ERROR_1;
			PRINT @MENSAJE_ERROR_1;
		END
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: HC_Datos_Generales_Paciente_Anamnesis: Eliminar Numero DNI>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_Instead_Of_Eliminar_Numero_DNI]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_Instead_Of_Eliminar_Numero_DNI]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	INSTEAD OF DELETE
	AS
BEGIN
	DECLARE
		@PACI_NUMERO_DNI_2 VARCHAR(30),
		@MENSAJE_ERROR VARCHAR(255) = 'El dato ya no se encuentra registrado',
		@MENSAJE_SUCCESS VARCHAR(255) = 'El dato fue eliminado correctamente';
	SELECT @PACI_NUMERO_DNI_2 = PACI_numero_dni
	FROM DELETED

	IF EXISTS (SELECT PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUMERO_DNI_2)
		BEGIN
			DELETE FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUMERO_DNI_2

			SELECT @MENSAJE_SUCCESS;
			PRINT @MENSAJE_SUCCESS;
		END
	ELSE IF NOT EXISTS (SELECT PACI_numero_dni
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUMERO_DNI_2)
		BEGIN
			SELECT @MENSAJE_ERROR;
			PRINT @MENSAJE_ERROR;
		END
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: HC_Datos_Generales_Paciente_Anamnesis: No Actualizar Email>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_No_Actualizar_Email]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_No_Actualizar_Email]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	INSTEAD OF UPDATE
	AS
BEGIN
	SET NOCOUNT ON;
	DECLARE
		@PACI_EMAIL_2 VARCHAR(30),
		@MENSAJE_ERROR VARCHAR(255) = 'El dato ya se encuentra registrado',
		@MENSAJE_SUCCESS VARCHAR(255) = 'El dato fue actualizado correctamente';
	SELECT @PACI_EMAIL_2 = PACI_email
	FROM INSERTED

	IF EXISTS (SELECT PACI_email
				FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_email = @PACI_EMAIL_2)
		BEGIN
			SELECT @MENSAJE_ERROR;
		END
	ELSE
		BEGIN
			UPDATE [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				SET
					PACI_email = @PACI_EMAIL_2
				WHERE PACI_email = @PACI_EMAIL_2
			SELECT @MENSAJE_SUCCESS;
		END
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: HC_Datos_Generales_Paciente_Anamnesis: No Actualizar Email>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_After_Update]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_After_Update]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	AFTER INSERT
	AS
BEGIN
	SET NOCOUNT ON;
	DECLARE
		--@PACI_NUMERO_DNI_2 VARCHAR(30),
		@MENSAJE_ERROR VARCHAR(255) = 'El dato solicitado no se encuentra registrado',
		@MENSAJE_SUCCESS VARCHAR(255) = 'El dato fue actualizado correctamente';
	--SELECT @PACI_NUMERO_DNI_2 = [PACI_numero_dni]
	--FROM INSERTED

	--IF EXISTS (SELECT [PACI_numero_dni]
	--			FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	--			WHERE [PACI_numero_dni] = @PACI_NUMERO_DNI_2)
		--BEGIN
			UPDATE P
				SET
					P.[PACI_nombres] = E.[PACI_nombres],
					P.[PACI_apellidos] = E.[PACI_apellidos],
					P.[PACI_genero] = E.[PACI_genero],
					P.[PACI_telefono_principal] = E.[PACI_telefono_principal],
					P.[PACI_telefono_movil] = E.[PACI_telefono_movil],
					P.[PACI_direccion] = E.[PACI_direccion],
					P.[PACI_ciudad] = E.[PACI_ciudad],
					P.[PACI_email] = E.[PACI_email],
					P.[PACI_tarjeta_dni] = E.[PACI_tarjeta_dni],
					P.[PACI_numero_dni] = E.[PACI_numero_dni]
			FROM INSERTED
				AS E INNER JOIN [dbo].[Pacientes] AS P ON E.[PACI_nombres] = P.[PACI_nombres]
				AS E INNER JOIN [dbo].[Pacientes] AS P ON E.[PACI_apellidos] = P.[PACI_apellidos]

			SELECT @MENSAJE_SUCCESS;
	--		PRINT @MENSAJE_SUCCESS;
	--	END
	--ELSE IF NOT EXISTS (SELECT [PACI_numero_dni]
	--			FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	--			WHERE [PACI_numero_dni] = @PACI_NUMERO_DNI_2)
	--	BEGIN
	--		SELECT @MENSAJE_ERROR;
	--		PRINT @MENSAJE_ERROR;
	--	END
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: HC_Datos_Generales_Paciente_Anamnesis: Eliminar>
-- Description:	<FROM INSERTED: Se utiliza para insertar datos nuevos>
-- Description:	<FROM DELETED: Se utiliza para traer datos viejos>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_Eliminar]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_Eliminar]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	INSTEAD OF DELETE
	AS
BEGIN
	DECLARE
		@NUMERO_FILAS INT,
		@MENSAJE_ERROR VARCHAR(255) = 'No se puede eliminar mas de un registro a la vez',
		@MENSAJE_SUCCESS VARCHAR(255) = 'El dato fue eliminado correctamente';

	SELECT @NUMERO_FILAS = COUNT(*)
	FROM DELETED

	IF @NUMERO_FILAS<1
		BEGIN
			DECLARE @PACI_NUIMERO_DNI_2 VARCHAR(30);
			SELECT @PACI_NUIMERO_DNI_2 = PACI_numero_dni
			FROM DELETED

			DELETE FROM [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
				WHERE PACI_numero_dni = @PACI_NUIMERO_DNI_2

			SELECT @MENSAJE_SUCCESS;
			PRINT @MENSAJE_SUCCESS;
		END
	ELSE IF @NUMERO_FILAS>1
		BEGIN
			SELECT @MENSAJE_ERROR
			PRINT @MENSAJE_ERROR
		END
END
GO