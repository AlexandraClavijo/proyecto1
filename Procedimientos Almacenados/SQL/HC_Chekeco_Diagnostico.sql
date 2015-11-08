set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoInsertar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@CD_ID AS INT,
@CD_principal_patologia AS VARCHAR(50),
@CD_zona_afectadas AS VARCHAR(50),
@CD_diagnostico_o_evolucion_enfermedad AS VARCHAR(200),
@CD_dolor_especifico AS VARCHAR(50),
@CD_tipo_dolor_especifico AS VARCHAR(50),
@CD_valor AS VARCHAR(50),
@CD_tiempo AS VARCHAR(50),
@CD_sensibilidad AS VARCHAR(50),
@CD_desc AS VARCHAR(50),
@CD_zonas_sensibles AS VARCHAR(50),
@CD_zonas_maltratadas AS VARCHAR(50),
@CD_tipo_zonas_maltratadas AS VARCHAR(50),
@CD_sicatrizacion AS VARCHAR(50),
@CD_condcion_piel AS VARCHAR(50),
@CD_areas_anormales AS VARCHAR(50),
@CD_atrofia_volumen AS VARCHAR(50),
@CD_contracturas AS VARCHAR(50),
@CD_diagnostico_aritculaciones_derecha AS VARCHAR(50),
@CD_diagnostico_aritculaciones_izquierda AS VARCHAR(50)
AS
BEGIN
INSERT INTO HC_Chekeco_Diagnostico (HC_fecha_registro,HC_registro,HC_codigo,CD_ID,CD_principal_patologia,CD_zona_afectadas,CD_diagnostico_o_evolucion_enfermedad,CD_dolor_especifico,CD_tipo_dolor_especifico,CD_valor,CD_tiempo,CD_sensibilidad,CD_desc,CD_zonas_sensibles,CD_zonas_maltratadas,CD_tipo_zonas_maltratadas,CD_sicatrizacion,CD_condcion_piel,CD_areas_anormales,CD_atrofia_volumen,CD_contracturas,CD_diagnostico_aritculaciones_derecha,CD_diagnostico_aritculaciones_izquierda)
SET @CD_ID = @@IDENTITY
VALUES (@HC_fecha_registro,@HC_registro,@HC_codigo,@CD_ID,@CD_principal_patologia,@CD_zona_afectadas,@CD_diagnostico_o_evolucion_enfermedad,@CD_dolor_especifico,@CD_tipo_dolor_especifico,@CD_valor,@CD_tiempo,@CD_sensibilidad,@CD_desc,@CD_zonas_sensibles,@CD_zonas_maltratadas,@CD_tipo_zonas_maltratadas,@CD_sicatrizacion,@CD_condcion_piel,@CD_areas_anormales,@CD_atrofia_volumen,@CD_contracturas,@CD_diagnostico_aritculaciones_derecha,@CD_diagnostico_aritculaciones_izquierda)
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@CD_ID AS INT,
@CD_principal_patologia AS VARCHAR(50),
@CD_zona_afectadas AS VARCHAR(50),
@CD_diagnostico_o_evolucion_enfermedad AS VARCHAR(200),
@CD_dolor_especifico AS VARCHAR(50),
@CD_tipo_dolor_especifico AS VARCHAR(50),
@CD_valor AS VARCHAR(50),
@CD_tiempo AS VARCHAR(50),
@CD_sensibilidad AS VARCHAR(50),
@CD_desc AS VARCHAR(50),
@CD_zonas_sensibles AS VARCHAR(50),
@CD_zonas_maltratadas AS VARCHAR(50),
@CD_tipo_zonas_maltratadas AS VARCHAR(50),
@CD_sicatrizacion AS VARCHAR(50),
@CD_condcion_piel AS VARCHAR(50),
@CD_areas_anormales AS VARCHAR(50),
@CD_atrofia_volumen AS VARCHAR(50),
@CD_contracturas AS VARCHAR(50),
@CD_diagnostico_aritculaciones_derecha AS VARCHAR(50),
@CD_diagnostico_aritculaciones_izquierda AS VARCHAR(50)
AS
BEGIN
UPDATE HC_Chekeco_Diagnostico
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo,
CD_ID = @CD_ID,
CD_principal_patologia = @CD_principal_patologia,
CD_zona_afectadas = @CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad = @CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico = @CD_dolor_especifico,
CD_tipo_dolor_especifico = @CD_tipo_dolor_especifico,
CD_valor = @CD_valor,
CD_tiempo = @CD_tiempo,
CD_sensibilidad = @CD_sensibilidad,
CD_desc = @CD_desc,
CD_zonas_sensibles = @CD_zonas_sensibles,
CD_zonas_maltratadas = @CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas = @CD_tipo_zonas_maltratadas,
CD_sicatrizacion = @CD_sicatrizacion,
CD_condcion_piel = @CD_condcion_piel,
CD_areas_anormales = @CD_areas_anormales,
CD_atrofia_volumen = @CD_atrofia_volumen,
CD_contracturas = @CD_contracturas,
CD_diagnostico_aritculaciones_derecha = @CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda = @CD_diagnostico_aritculaciones_izquierda
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoEliminar
@CD_ID AS INT
AS
BEGIN
DELETE FROM HC_Chekeco_Diagnostico
WHERE CD_ID = @CD_ID
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoObtener
@CD_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
WHERE CD_ID = @CD_ID
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
ORDER BY  CD_ID ASC
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
ORDER BY  CD_ID DESC
END
GO

CREATE PROCEDURE SpHC_Chekeco_DiagnosticoAnterior
@CD_ID AS INT
AS
IF(SELECT COUNT(CD_ID) FROM HC_Chekeco_Diagnostico WHERE CD_ID < @CD_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
WHERE CD_ID < @CD_ID
ORDER BY  CD_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
ORDER BY  CD_ID ASC
END
GO


CREATE PROCEDURE SpHC_Chekeco_DiagnosticoSiguiente
@CD_ID AS INT
AS
IF(SELECT COUNT(CD_ID) FROM HC_Chekeco_Diagnostico WHERE CD_ID > @CD_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
WHERE CD_ID > @CD_ID
ORDER BY  CD_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
CD_ID,
CD_principal_patologia,
CD_zona_afectadas,
CD_diagnostico_o_evolucion_enfermedad,
CD_dolor_especifico,
CD_tipo_dolor_especifico,
CD_valor,
CD_tiempo,
CD_sensibilidad,
CD_desc,
CD_zonas_sensibles,
CD_zonas_maltratadas,
CD_tipo_zonas_maltratadas,
CD_sicatrizacion,
CD_condcion_piel,
CD_areas_anormales,
CD_atrofia_volumen,
CD_contracturas,
CD_diagnostico_aritculaciones_derecha,
CD_diagnostico_aritculaciones_izquierda
FROM HC_Chekeco_Diagnostico
ORDER BY  CD_ID DESC
END
GO

