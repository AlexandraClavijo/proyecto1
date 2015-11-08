set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoInsertar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@ESD_ID AS INT,
@ESD_tipo_vivienda AS VARCHAR(50),
@ESD_numero_pisos AS INT,
@ESD_cond_vivienda AS VARCHAR(50),
@ESD_tipo_terreno AS VARCHAR(50),
@ESD_zona_vivienda AS VARCHAR(50),
@ESD_espacios_acseso AS VARCHAR(50),
@ESD_personas_que_vive AS VARCHAR(50)
AS
BEGIN
INSERT INTO HC_Entorno_Social_Diagnostico (HC_fecha_registro,HC_registro,HC_codigo,ESD_ID,ESD_tipo_vivienda,ESD_numero_pisos,ESD_cond_vivienda,ESD_tipo_terreno,ESD_zona_vivienda,ESD_espacios_acseso,ESD_personas_que_vive)
SET @ESD_ID = @@IDENTITY
VALUES (@HC_fecha_registro,@HC_registro,@HC_codigo,@ESD_ID,@ESD_tipo_vivienda,@ESD_numero_pisos,@ESD_cond_vivienda,@ESD_tipo_terreno,@ESD_zona_vivienda,@ESD_espacios_acseso,@ESD_personas_que_vive)
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@ESD_ID AS INT,
@ESD_tipo_vivienda AS VARCHAR(50),
@ESD_numero_pisos AS INT,
@ESD_cond_vivienda AS VARCHAR(50),
@ESD_tipo_terreno AS VARCHAR(50),
@ESD_zona_vivienda AS VARCHAR(50),
@ESD_espacios_acseso AS VARCHAR(50),
@ESD_personas_que_vive AS VARCHAR(50)
AS
BEGIN
UPDATE HC_Entorno_Social_Diagnostico
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo,
ESD_ID = @ESD_ID,
ESD_tipo_vivienda = @ESD_tipo_vivienda,
ESD_numero_pisos = @ESD_numero_pisos,
ESD_cond_vivienda = @ESD_cond_vivienda,
ESD_tipo_terreno = @ESD_tipo_terreno,
ESD_zona_vivienda = @ESD_zona_vivienda,
ESD_espacios_acseso = @ESD_espacios_acseso,
ESD_personas_que_vive = @ESD_personas_que_vive
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoEliminar
@ESD_ID AS INT
AS
BEGIN
DELETE FROM HC_Entorno_Social_Diagnostico
WHERE ESD_ID = @ESD_ID
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoObtener
@ESD_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
WHERE ESD_ID = @ESD_ID
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
ORDER BY  ESD_ID ASC
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
ORDER BY  ESD_ID DESC
END
GO

CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoAnterior
@ESD_ID AS INT
AS
IF(SELECT COUNT(ESD_ID) FROM HC_Entorno_Social_Diagnostico WHERE ESD_ID < @ESD_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
WHERE ESD_ID < @ESD_ID
ORDER BY  ESD_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
ORDER BY  ESD_ID ASC
END
GO


CREATE PROCEDURE SpHC_Entorno_Social_DiagnosticoSiguiente
@ESD_ID AS INT
AS
IF(SELECT COUNT(ESD_ID) FROM HC_Entorno_Social_Diagnostico WHERE ESD_ID > @ESD_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
WHERE ESD_ID > @ESD_ID
ORDER BY  ESD_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ESD_ID,
ESD_tipo_vivienda,
ESD_numero_pisos,
ESD_cond_vivienda,
ESD_tipo_terreno,
ESD_zona_vivienda,
ESD_espacios_acseso,
ESD_personas_que_vive
FROM HC_Entorno_Social_Diagnostico
ORDER BY  ESD_ID DESC
END
GO

