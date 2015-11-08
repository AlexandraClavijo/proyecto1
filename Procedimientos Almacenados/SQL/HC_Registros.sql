set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpHC_RegistrosInsertar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT
AS
BEGIN
INSERT INTO HC_Registros (HC_fecha_registro,HC_registro,HC_codigo)
SET @HC_ID = @@IDENTITY
VALUES (@HC_fecha_registro,@HC_registro,@HC_codigo)
END
GO

CREATE PROCEDURE SpHC_RegistrosActualizar
@HC_ID AS INT,
@HC_fecha_registro AS DATE,
@HC_registro AS INT,
@HC_codigo AS INT
AS
BEGIN
UPDATE HC_Registros
SET HC_fecha_registro = @HC_fecha_registro,
HC_registro = @HC_registro,
HC_codigo = @HC_codigo
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_RegistrosEliminar
@HC_ID AS INT
AS
BEGIN
DELETE FROM HC_Registros
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_RegistrosListar
AS
BEGIN
SELECT HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
END
GO

CREATE PROCEDURE SpHC_RegistrosObtener
@HC_ID AS INT
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
WHERE HC_ID = @HC_ID
END
GO

CREATE PROCEDURE SpHC_RegistrosPrimero
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
ORDER BY  HC_ID ASC
END
GO

CREATE PROCEDURE SpHC_RegistrosUltimo
AS
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
ORDER BY  HC_ID DESC
END
GO

CREATE PROCEDURE SpHC_RegistrosAnterior
@HC_ID AS INT
AS
IF(SELECT COUNT(HC_ID) FROM HC_Registros WHERE HC_ID < @HC_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
WHERE HC_ID < @HC_ID
ORDER BY  HC_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
ORDER BY  HC_ID ASC
END
GO


CREATE PROCEDURE SpHC_RegistrosSiguiente
@HC_ID AS INT
AS
IF(SELECT COUNT(HC_ID) FROM HC_Registros WHERE HC_ID > @HC_ID) > 0
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
WHERE HC_ID > @HC_ID
ORDER BY  HC_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
HC_ID,
HC_fecha_registro,
HC_registro,
HC_codigo
FROM HC_Registros
ORDER BY  HC_ID DESC
END
GO

