USE [ProtesisOrtesis]
GO

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SpHC_Datos_Generales_Paciente_AnamnesisInsertar]
	@HC_ID AS INT,
	@HC_fecha_registro AS DATE,
	@HC_registro AS INT,
	@HC_codigo AS INT,
	@DGPA_ID AS INT,
	@PACI_nombres AS VARCHAR(40),
	@PACI_apellidos AS VARCHAR(40),
	@DGPA_eps AS VARCHAR(30),
	@PACI_genero AS VARCHAR(30),
	@DGPA_edad AS INT,
	@DGPA_estatura AS VARCHAR(10),
	@DGPA_peso AS VARCHAR(10),
	@DGPA_estado_civil AS VARCHAR(30),
	@PACI_telefono_principal AS VARCHAR(30),
	@PACI_email AS VARCHAR(50),
	@PACI_tarjeta_dni AS VARCHAR(30),
	@PACI_numero_dni AS VARCHAR(30),
	@PACI_telefono_movil AS VARCHAR(30),
	@PACI_direccion AS VARCHAR(100),
	@PACI_ciudad AS VARCHAR(30),
	@LOGIN_USUARIO VARCHAR(50),
	@FILAS_AFECTADAS INT OUTPUT,
	@NUMERO_ERROR INT OUTPUT,
	@MENSAJE_ERROR VARCHAR(255)
	AS
BEGIN
	SET NOCOUNT ON
	IF @LOGIN_USUARIO<>'ADMIN' OR @LOGIN_USUARIO<>'Admin' OR @LOGIN_USUARIO<>'admin'
	BEGIN
		SELECT @NUMERO_ERROR=30000, @MENSAJE_ERROR='No tiene permisos autorizados'
		GOTO FINAL
	END
	INSERT INTO [dbo].[HC_Datos_Generales_Paciente_Anamnesis]
		(
			HC_fecha_registro,
			HC_registro,
			HC_codigo,
			DGPA_ID,
			PACI_nombres,
			PACI_apellidos,
			DGPA_eps,
			PACI_genero,
			DGPA_edad,
			DGPA_estatura,
			DGPA_peso,
			DGPA_estado_civil,
			PACI_telefono_principal,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad
		)
VALUES
	(
		@HC_fecha_registro,
		@HC_registro,
		@HC_codigo,
		@DGPA_ID,
		@PACI_nombres,
		@PACI_apellidos,
		@DGPA_eps,
		@PACI_genero,
		@DGPA_edad,
		@DGPA_estatura,
		@DGPA_peso,
		@DGPA_estado_civil,
		@PACI_telefono_principal,
		@PACI_email,
		@PACI_tarjeta_dni,
		@PACI_numero_dni,
		@PACI_telefono_movil,
		@PACI_direccion,
		@PACI_ciudad
	)
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@DGPA_ID AS INT,
@PACI_nombres AS VARCHAR(40),
@PACI_apellidos AS VARCHAR(40),
@DGPA_eps AS VARCHAR(30),
@PACI_genero AS VARCHAR(30),
@DGPA_edad AS INT,
@DGPA_estatura AS VARCHAR(10),
@DGPA_peso AS VARCHAR(10),
@DGPA_estado_civil AS VARCHAR(30),
@PACI_telefono_principal AS VARCHAR(30),
@PACI_email AS VARCHAR(50),
@PACI_tarjeta_dni AS VARCHAR(30),
@PACI_numero_dni AS VARCHAR(30),
@PACI_telefono_movil AS VARCHAR(30),
@PACI_direccion AS VARCHAR(100),
@PACI_ciudad AS VARCHAR(30)
AS
BEGIN
UPDATE HC_Datos_Generales_Paciente_Anamnesis
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo,
DGPA_ID = @DGPA_ID,
PACI_nombres = @PACI_nombres,
PACI_apellidos = @PACI_apellidos,
DGPA_eps = @DGPA_eps,
PACI_genero = @PACI_genero,
DGPA_edad = @DGPA_edad,
DGPA_estatura = @DGPA_estatura,
DGPA_peso = @DGPA_peso,
DGPA_estado_civil = @DGPA_estado_civil,
PACI_telefono_principal = @PACI_telefono_principal,
PACI_email = @PACI_email,
PACI_tarjeta_dni = @PACI_tarjeta_dni,
PACI_numero_dni = @PACI_numero_dni,
PACI_telefono_movil = @PACI_telefono_movil,
PACI_direccion = @PACI_direccion,
PACI_ciudad = @PACI_ciudad
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisEliminar
@DGPA_ID AS INT
AS
BEGIN
DELETE FROM HC_Datos_Generales_Paciente_Anamnesis
WHERE DGPA_ID = @DGPA_ID
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisObtener
@DGPA_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
WHERE DGPA_ID = @DGPA_ID
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
ORDER BY  DGPA_ID ASC
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
ORDER BY  DGPA_ID DESC
END
GO

CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisAnterior
@DGPA_ID AS INT
AS
IF(SELECT COUNT(DGPA_ID) FROM HC_Datos_Generales_Paciente_Anamnesis WHERE DGPA_ID < @DGPA_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
WHERE DGPA_ID < @DGPA_ID
ORDER BY  DGPA_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
ORDER BY  DGPA_ID ASC
END
GO


CREATE PROCEDURE SpHC_Datos_Generales_Paciente_AnamnesisSiguiente
@DGPA_ID AS INT
AS
IF(SELECT COUNT(DGPA_ID) FROM HC_Datos_Generales_Paciente_Anamnesis WHERE DGPA_ID > @DGPA_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
WHERE DGPA_ID > @DGPA_ID
ORDER BY  DGPA_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
DGPA_ID,
PACI_nombres,
PACI_apellidos,
DGPA_eps,
PACI_genero,
DGPA_edad,
DGPA_estatura,
DGPA_peso,
DGPA_estado_civil,
PACI_telefono_principal,
PACI_email,
PACI_tarjeta_dni,
PACI_numero_dni,
PACI_telefono_movil,
PACI_direccion,
PACI_ciudad
FROM HC_Datos_Generales_Paciente_Anamnesis
ORDER BY  DGPA_ID DESC
END
GO

