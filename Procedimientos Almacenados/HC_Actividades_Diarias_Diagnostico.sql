set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoInsertar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@ADD_ID AS INT,
@ADD_upcacion AS VARCHAR(50),
@ADD_actividades_diarias AS VARCHAR(50),
@ADD_escaleras_ramplas AS VARCHAR(50),
@ADD_max_distancia_caminando AS VARCHAR(50),
@ADD_tiempo_maxX_caminar AS VARCHAR(50),
@ADD_medios_transportes AS VARCHAR(50),
@ADD_ayudas_tecnicas AS VARCHAR(50),
@ADD_ayuda_personal_cuidador AS VARCHAR(50)
AS
BEGIN
INSERT INTO HC_Actividades_Diarias_Diagnostico (HC_fecha_registro,HC_registro,HC_codigo,ADD_ID,ADD_upcacion,ADD_actividades_diarias,ADD_escaleras_ramplas,ADD_max_distancia_caminando,ADD_tiempo_maxX_caminar,ADD_medios_transportes,ADD_ayudas_tecnicas,ADD_ayuda_personal_cuidador)
SET @ADD_ID = @@IDENTITY
VALUES (@HC_fecha_registro,@HC_registro,@HC_codigo,@ADD_ID,@ADD_upcacion,@ADD_actividades_diarias,@ADD_escaleras_ramplas,@ADD_max_distancia_caminando,@ADD_tiempo_maxX_caminar,@ADD_medios_transportes,@ADD_ayudas_tecnicas,@ADD_ayuda_personal_cuidador)
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@ADD_ID AS INT,
@ADD_upcacion AS VARCHAR(50),
@ADD_actividades_diarias AS VARCHAR(50),
@ADD_escaleras_ramplas AS VARCHAR(50),
@ADD_max_distancia_caminando AS VARCHAR(50),
@ADD_tiempo_maxX_caminar AS VARCHAR(50),
@ADD_medios_transportes AS VARCHAR(50),
@ADD_ayudas_tecnicas AS VARCHAR(50),
@ADD_ayuda_personal_cuidador AS VARCHAR(50)
AS
BEGIN
UPDATE HC_Actividades_Diarias_Diagnostico
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo,
ADD_ID = @ADD_ID,
ADD_upcacion = @ADD_upcacion,
ADD_actividades_diarias = @ADD_actividades_diarias,
ADD_escaleras_ramplas = @ADD_escaleras_ramplas,
ADD_max_distancia_caminando = @ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar = @ADD_tiempo_maxX_caminar,
ADD_medios_transportes = @ADD_medios_transportes,
ADD_ayudas_tecnicas = @ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador = @ADD_ayuda_personal_cuidador
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoEliminar
@ADD_ID AS INT
AS
BEGIN
DELETE FROM HC_Actividades_Diarias_Diagnostico
WHERE ADD_ID = @ADD_ID
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoObtener
@ADD_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
WHERE ADD_ID = @ADD_ID
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
ORDER BY  ADD_ID ASC
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
ORDER BY  ADD_ID DESC
END
GO

CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoAnterior
@ADD_ID AS INT
AS
IF(SELECT COUNT(ADD_ID) FROM HC_Actividades_Diarias_Diagnostico WHERE ADD_ID < @ADD_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
WHERE ADD_ID < @ADD_ID
ORDER BY  ADD_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
ORDER BY  ADD_ID ASC
END
GO


CREATE PROCEDURE SpHC_Actividades_Diarias_DiagnosticoSiguiente
@ADD_ID AS INT
AS
IF(SELECT COUNT(ADD_ID) FROM HC_Actividades_Diarias_Diagnostico WHERE ADD_ID > @ADD_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
WHERE ADD_ID > @ADD_ID
ORDER BY  ADD_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
ADD_ID,
ADD_upcacion,
ADD_actividades_diarias,
ADD_escaleras_ramplas,
ADD_max_distancia_caminando,
ADD_tiempo_maxX_caminar,
ADD_medios_transportes,
ADD_ayudas_tecnicas,
ADD_ayuda_personal_cuidador
FROM HC_Actividades_Diarias_Diagnostico
ORDER BY  ADD_ID DESC
END
GO

