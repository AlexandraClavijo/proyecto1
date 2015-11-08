USE [ProtesisOrtesis]
GO

SP_HELPTRIGGER Historial_Movimientos_Registros;

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Titule:		<TRIGGER: After Eliminar>
-- Create date: <15/09/2015>
-- Update date: <dd/mm/aaaa>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_After_Insertar]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_After_Insertar]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	AFTER INSERT
	AS
BEGIN
	SET NOCOUNT ON
	DECLARE
		@HMR_DESCRIPTION_2 VARCHAR(100) = 'Datos insertados completos',
		@HMR_DATE_REGISTERED_2 DATE = GETDATE(),

		@MENSAJE_SUCCESS_1 VARCHAR(255) = 'Log creado correctamente';

	INSERT INTO [dbo].[Historial_Movimientos_Registros]
		( HMR_description, HMR_date_registered )
	VALUES
		( @HMR_DESCRIPTION_2, @HMR_DATE_REGISTERED_2 )

	SELECT @MENSAJE_SUCCESS_1;
	PRINT @MENSAJE_SUCCESS_1;
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Titule:		<TRIGGER: After Eliminar>
-- Create date: <15/09/2015>
-- Update date: <dd/mm/aaaa>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_After_Actualizar]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_After_Actualizar]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	AFTER UPDATE
	AS
BEGIN
	SET NOCOUNT ON
	DECLARE
		@HMR_DESCRIPTION_2 VARCHAR(100) = 'Datos actualizados completos',
		@HMR_DATE_UPDATED_2 DATE = GETDATE(),

		@MENSAJE_SUCCESS_1 VARCHAR(255) = 'Log creado correctamente';

	INSERT INTO [dbo].[Historial_Movimientos_Registros]
		( HMR_description, HMR_date_update )
	VALUES
		( @HMR_DESCRIPTION_2, @HMR_DATE_UPDATED_2 )

	SELECT @MENSAJE_SUCCESS_1;
	PRINT @MENSAJE_SUCCESS_1;
END
GO

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Titule:		<TRIGGER: After Eliminar>
-- Create date: <15/09/2015>
-- Update date: <dd/mm/aaaa>
-- Description:	<Sin Documentar>
-- ==========================================================================================
DROP TRIGGER [dbo].[TR_HC_DGPA_After_Eliminar]
GO
CREATE TRIGGER [dbo].[TR_HC_DGPA_After_Eliminar]
	ON [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
	AFTER DELETE
	AS
BEGIN
	SET NOCOUNT ON
	DECLARE
		@HMR_DESCRIPTION_2 VARCHAR(100) = 'Datos eliminados completos',
		@HMR_DATE_DELETED_2 DATE = GETDATE(),

		@MENSAJE_SUCCESS_1 VARCHAR(255) = 'Log creado correctamente';

	INSERT INTO [dbo].[Historial_Movimientos_Registros]
		( HMR_description, HMR_date_delete )
	VALUES
		( @HMR_DESCRIPTION_2, @HMR_DATE_DELETED_2 )

	SELECT @MENSAJE_SUCCESS_1;
	PRINT @MENSAJE_SUCCESS_1;
END
GO