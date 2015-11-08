set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpProductosInsertar
@PROD_ID AS INT,
@PROD_nombre AS VARCHAR(50),
@PROD_tipo AS VARCHAR(50),
@PROD_descripcion AS VARCHAR(150),
@PROD_cantidad AS INT,
@PROD_fecha_registro AS DATE
AS
BEGIN
INSERT INTO Productos (PROD_nombre,PROD_tipo,PROD_descripcion,PROD_cantidad,PROD_fecha_registro)
SET @PROD_ID = @@IDENTITY
VALUES (@PROD_nombre,@PROD_tipo,@PROD_descripcion,@PROD_cantidad,@PROD_fecha_registro)
END
GO

CREATE PROCEDURE SpProductosActualizar
@PROD_ID AS INT,
@PROD_nombre AS VARCHAR(50),
@PROD_tipo AS VARCHAR(50),
@PROD_descripcion AS VARCHAR(150),
@PROD_cantidad AS INT,
@PROD_fecha_registro AS DATE
AS
BEGIN
UPDATE Productos
SET PROD_nombre = @PROD_nombre,
PROD_tipo = @PROD_tipo,
PROD_descripcion = @PROD_descripcion,
PROD_cantidad = @PROD_cantidad,
PROD_fecha_registro = @PROD_fecha_registro
WHERE PROD_ID = @PROD_ID
END
GO

CREATE PROCEDURE SpProductosEliminar
@PROD_ID AS INT
AS
BEGIN
DELETE FROM Productos
WHERE PROD_ID = @PROD_ID
END
GO

CREATE PROCEDURE SpProductosListar
AS
BEGIN
SELECT PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
END
GO

CREATE PROCEDURE SpProductosObtener
@PROD_ID AS INT
AS
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
WHERE PROD_ID = @PROD_ID
END
GO

CREATE PROCEDURE SpProductosPrimero
AS
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
ORDER BY  PROD_ID ASC
END
GO

CREATE PROCEDURE SpProductosUltimo
AS
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
ORDER BY  PROD_ID DESC
END
GO

CREATE PROCEDURE SpProductosAnterior
@PROD_ID AS INT
AS
IF(SELECT COUNT(PROD_ID) FROM Productos WHERE PROD_ID < @PROD_ID) > 0
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
WHERE PROD_ID < @PROD_ID
ORDER BY  PROD_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
ORDER BY  PROD_ID ASC
END
GO


CREATE PROCEDURE SpProductosSiguiente
@PROD_ID AS INT
AS
IF(SELECT COUNT(PROD_ID) FROM Productos WHERE PROD_ID > @PROD_ID) > 0
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
WHERE PROD_ID > @PROD_ID
ORDER BY  PROD_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
PROD_ID,
PROD_nombre,
PROD_tipo,
PROD_descripcion,
PROD_cantidad,
PROD_fecha_registro
FROM Productos
ORDER BY  PROD_ID DESC
END
GO

