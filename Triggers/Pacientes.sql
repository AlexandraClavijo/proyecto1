USE ProtesisOrtesis;
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: Pacientes: Insertar>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER TR_Pacientes_Insetar
GO
CREATE TRIGGER TR_Pacientes_Insetar
ON Pacientes AFTER INSERT
AS
BEGIN
	SELECT 'Sus datos han sido insertados correctamente';
END;
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: Pacientes: Actualizar>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER TR_Pacientes_Actualizar
GO
CREATE TRIGGER TR_Pacientes_Actualizar
ON Pacientes AFTER UPDATE
AS
BEGIN
	IF UPDATE (PACI_numero_dni)
		BEGIN
			SELECT 'Datos actualizados correctamente';
		END
	ELSE
		BEGIN
			SELECT 'ERROR: Datos no actualizados correctamente';
		END
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: Pacientes: Eliminar>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER TR_Pacientes_Eliminar
GO
CREATE TRIGGER TR_Pacientes_Eliminar
ON Pacientes AFTER DELETE
AS
BEGIN
	SELECT 'Sus datos han sido eliminados correctamente';
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<TRIGGER: Pacientes: No Actualizar Rol>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_Pacientes_No_Actualizar_Rol];
GO
CREATE TRIGGER [dbo].[TR_Pacientes_No_Actualizar_Rol]
	ON [dbo].[Pacientes]
	AFTER UPDATE
	AS
BEGIN
	SET NOCOUNT ON
	DECLARE
		@PACI_NUMERO_DNI_2 VARCHAR(30),
		@PACI_ROL_2 VARCHAR(30) = 'Paciente',
		@MENSAJE_ERROR_1 VARCHAR(255) = 'No tiene permiso para cambiar el rol',
		@MENSAJE_ERROR_2 VARCHAR(255) = 'No se ha encontrado ningun registro';
	SELECT
		@PACI_NUMERO_DNI_2 = INSERTED.[PACI_numero_dni],
		@PACI_ROL_2 = INSERTED.[PACI_rol]
	FROM INSERTED;

	IF EXISTS (SELECT [PACI_numero_dni]
				FROM [dbo].[Pacientes]
				WHERE [PACI_numero_dni] = @PACI_NUMERO_DNI_2)
			BEGIN
				IF UPDATE ([PACI_rol])
					BEGIN
						SELECT @MENSAJE_ERROR_1;
						PRINT @MENSAJE_ERROR_1;
						ROLLBACK;
					END
			END
	ELSE IF EXISTS (SELECT [PACI_rol]
				FROM [dbo].[Pacientes])
			BEGIN
				IF UPDATE ([PACI_rol])
				BEGIN
					UPDATE [dbo].[Pacientes]
						SET
							[PACI_rol] = 'Paciente'
				END
			END
	ELSE IF NOT EXISTS (SELECT [PACI_numero_dni]
				FROM [dbo].[Pacientes]
				WHERE [PACI_numero_dni] = @PACI_NUMERO_DNI_2)
			BEGIN
				SELECT @MENSAJE_ERROR_2;
				PRINT @MENSAJE_ERROR_2;
			END
END
GO
