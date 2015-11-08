set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisInsertar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@PRA_ID AS INT,
@PRA_persona_responsable AS VARCHAR(40),
@PRA_parentesco AS VARCHAR(40),
@PRA_paren_tarjeta_dni AS VARCHAR(50),
@PRA_paren_numero_dni AS VARCHAR(30),
@PRA_paren_direccion AS VARCHAR(100),
@PRA_paren_telefono_principal AS VARCHAR(30),
@PRA_paren_telefono_movil AS VARCHAR(30),
@PRA_paren_ciudad AS VARCHAR(30)
AS
BEGIN
INSERT INTO HC_Persona_Responsable_Anamnesis (HC_fecha_registro,HC_registro,HC_codigo,PRA_ID,PRA_persona_responsable,PRA_parentesco,PRA_paren_tarjeta_dni,PRA_paren_numero_dni,PRA_paren_direccion,PRA_paren_telefono_principal,PRA_paren_telefono_movil,PRA_paren_ciudad)
SET @PRA_ID = @@IDENTITY
VALUES (@HC_fecha_registro,@HC_registro,@HC_codigo,@PRA_ID,@PRA_persona_responsable,@PRA_parentesco,@PRA_paren_tarjeta_dni,@PRA_paren_numero_dni,@PRA_paren_direccion,@PRA_paren_telefono_principal,@PRA_paren_telefono_movil,@PRA_paren_ciudad)
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT,
@PRA_ID AS INT,
@PRA_persona_responsable AS VARCHAR(40),
@PRA_parentesco AS VARCHAR(40),
@PRA_paren_tarjeta_dni AS VARCHAR(50),
@PRA_paren_numero_dni AS VARCHAR(30),
@PRA_paren_direccion AS VARCHAR(100),
@PRA_paren_telefono_principal AS VARCHAR(30),
@PRA_paren_telefono_movil AS VARCHAR(30),
@PRA_paren_ciudad AS VARCHAR(30)
AS
BEGIN
UPDATE HC_Persona_Responsable_Anamnesis
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo,
PRA_ID = @PRA_ID,
PRA_persona_responsable = @PRA_persona_responsable,
PRA_parentesco = @PRA_parentesco,
PRA_paren_tarjeta_dni = @PRA_paren_tarjeta_dni,
PRA_paren_numero_dni = @PRA_paren_numero_dni,
PRA_paren_direccion = @PRA_paren_direccion,
PRA_paren_telefono_principal = @PRA_paren_telefono_principal,
PRA_paren_telefono_movil = @PRA_paren_telefono_movil,
PRA_paren_ciudad = @PRA_paren_ciudad
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisEliminar
@PRA_ID AS INT
AS
BEGIN
DELETE FROM HC_Persona_Responsable_Anamnesis
WHERE PRA_ID = @PRA_ID
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisObtener
@PRA_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
WHERE PRA_ID = @PRA_ID
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
ORDER BY  PRA_ID ASC
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
ORDER BY  PRA_ID DESC
END
GO

CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisAnterior
@PRA_ID AS INT
AS
IF(SELECT COUNT(PRA_ID) FROM HC_Persona_Responsable_Anamnesis WHERE PRA_ID < @PRA_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
WHERE PRA_ID < @PRA_ID
ORDER BY  PRA_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
ORDER BY  PRA_ID ASC
END
GO


CREATE PROCEDURE SpHC_Persona_Responsable_AnamnesisSiguiente
@PRA_ID AS INT
AS
IF(SELECT COUNT(PRA_ID) FROM HC_Persona_Responsable_Anamnesis WHERE PRA_ID > @PRA_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
WHERE PRA_ID > @PRA_ID
ORDER BY  PRA_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo,
PRA_ID,
PRA_persona_responsable,
PRA_parentesco,
PRA_paren_tarjeta_dni,
PRA_paren_numero_dni,
PRA_paren_direccion,
PRA_paren_telefono_principal,
PRA_paren_telefono_movil,
PRA_paren_ciudad
FROM HC_Persona_Responsable_Anamnesis
ORDER BY  PRA_ID DESC
END
GO

