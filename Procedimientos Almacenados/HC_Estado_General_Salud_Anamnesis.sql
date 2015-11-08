set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisInsertar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@EGSA_ID AS INT,
@EGSA_problemas_cardiovasculares AS VARCHAR(50),
@EGSA_problemas_circulatorios AS VARCHAR(50),
@EGSA_diabetes AS VARCHAR(50),
@EGSA_neuropatia_sistema_nervioso AS VARCHAR(50),
@EGSA_alergias AS VARCHAR(50),
@EGSA_coordinacion_equilibrio_mareo AS VARCHAR(50),
@EGSA_infecciones AS VARCHAR(50),
@EGSA_toma_medicamentos AS VARCHAR(50),
@EGSA_efectos_medicacion AS VARCHAR(50),
@EGSA_medicamentos_dosis AS VARCHAR(50),
@EGSA_otros_sintomas AS VARCHAR(50),
@EGSA_otras_enfermedades AS VARCHAR(50),
@EGSA_dolores AS VARCHAR(50),
@EGSA_otras_limitaciones AS VARCHAR(50),
@EGSA_atencedentes_personales AS VARCHAR(50),
@EGSA_antecedentes_familiares AS VARCHAR(50)
AS
BEGIN
INSERT INTO HC_Estado_General_Salud_Anamnesis (HC_fecha_registro,HC_registro,HC_codigo,EGSA_ID,EGSA_problemas_cardiovasculares,EGSA_problemas_circulatorios,EGSA_diabetes,EGSA_neuropatia_sistema_nervioso,EGSA_alergias,EGSA_coordinacion_equilibrio_mareo,EGSA_infecciones,EGSA_toma_medicamentos,EGSA_efectos_medicacion,EGSA_medicamentos_dosis,EGSA_otros_sintomas,EGSA_otras_enfermedades,EGSA_dolores,EGSA_otras_limitaciones,EGSA_atencedentes_personales,EGSA_antecedentes_familiares)
SET @EGSA_ID = @@IDENTITY
VALUES (@HC_fecha_registro,@HC_registro,@HC_codigo,@EGSA_ID,@EGSA_problemas_cardiovasculares,@EGSA_problemas_circulatorios,@EGSA_diabetes,@EGSA_neuropatia_sistema_nervioso,@EGSA_alergias,@EGSA_coordinacion_equilibrio_mareo,@EGSA_infecciones,@EGSA_toma_medicamentos,@EGSA_efectos_medicacion,@EGSA_medicamentos_dosis,@EGSA_otros_sintomas,@EGSA_otras_enfermedades,@EGSA_dolores,@EGSA_otras_limitaciones,@EGSA_atencedentes_personales,@EGSA_antecedentes_familiares)
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@EGSA_ID AS INT,
@EGSA_problemas_cardiovasculares AS VARCHAR(50),
@EGSA_problemas_circulatorios AS VARCHAR(50),
@EGSA_diabetes AS VARCHAR(50),
@EGSA_neuropatia_sistema_nervioso AS VARCHAR(50),
@EGSA_alergias AS VARCHAR(50),
@EGSA_coordinacion_equilibrio_mareo AS VARCHAR(50),
@EGSA_infecciones AS VARCHAR(50),
@EGSA_toma_medicamentos AS VARCHAR(50),
@EGSA_efectos_medicacion AS VARCHAR(50),
@EGSA_medicamentos_dosis AS VARCHAR(50),
@EGSA_otros_sintomas AS VARCHAR(50),
@EGSA_otras_enfermedades AS VARCHAR(50),
@EGSA_dolores AS VARCHAR(50),
@EGSA_otras_limitaciones AS VARCHAR(50),
@EGSA_atencedentes_personales AS VARCHAR(50),
@EGSA_antecedentes_familiares AS VARCHAR(50)
AS
BEGIN
UPDATE HC_Estado_General_Salud_Anamnesis
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo,
EGSA_ID = @EGSA_ID,
EGSA_problemas_cardiovasculares = @EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios = @EGSA_problemas_circulatorios,
EGSA_diabetes = @EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso = @EGSA_neuropatia_sistema_nervioso,
EGSA_alergias = @EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo = @EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones = @EGSA_infecciones,
EGSA_toma_medicamentos = @EGSA_toma_medicamentos,
EGSA_efectos_medicacion = @EGSA_efectos_medicacion,
EGSA_medicamentos_dosis = @EGSA_medicamentos_dosis,
EGSA_otros_sintomas = @EGSA_otros_sintomas,
EGSA_otras_enfermedades = @EGSA_otras_enfermedades,
EGSA_dolores = @EGSA_dolores,
EGSA_otras_limitaciones = @EGSA_otras_limitaciones,
EGSA_atencedentes_personales = @EGSA_atencedentes_personales,
EGSA_antecedentes_familiares = @EGSA_antecedentes_familiares
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisEliminar
@EGSA_ID AS INT
AS
BEGIN
DELETE FROM HC_Estado_General_Salud_Anamnesis
WHERE EGSA_ID = @EGSA_ID
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisObtener
@EGSA_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
WHERE EGSA_ID = @EGSA_ID
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
ORDER BY  EGSA_ID ASC
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
ORDER BY  EGSA_ID DESC
END
GO

CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisAnterior
@EGSA_ID AS INT
AS
IF(SELECT COUNT(EGSA_ID) FROM HC_Estado_General_Salud_Anamnesis WHERE EGSA_ID < @EGSA_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
WHERE EGSA_ID < @EGSA_ID
ORDER BY  EGSA_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
ORDER BY  EGSA_ID ASC
END
GO


CREATE PROCEDURE SpHC_Estado_General_Salud_AnamnesisSiguiente
@EGSA_ID AS INT
AS
IF(SELECT COUNT(EGSA_ID) FROM HC_Estado_General_Salud_Anamnesis WHERE EGSA_ID > @EGSA_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
WHERE EGSA_ID > @EGSA_ID
ORDER BY  EGSA_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
EGSA_ID,
EGSA_problemas_cardiovasculares,
EGSA_problemas_circulatorios,
EGSA_diabetes,
EGSA_neuropatia_sistema_nervioso,
EGSA_alergias,
EGSA_coordinacion_equilibrio_mareo,
EGSA_infecciones,
EGSA_toma_medicamentos,
EGSA_efectos_medicacion,
EGSA_medicamentos_dosis,
EGSA_otros_sintomas,
EGSA_otras_enfermedades,
EGSA_dolores,
EGSA_otras_limitaciones,
EGSA_atencedentes_personales,
EGSA_antecedentes_familiares
FROM HC_Estado_General_Salud_Anamnesis
ORDER BY  EGSA_ID DESC
END
GO

