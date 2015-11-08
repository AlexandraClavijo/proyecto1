set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpProveedoresInsertar
@PROV_ID AS INT,
@PROV_nombres AS VARCHAR(40),
@PROV_apellidos AS VARCHAR(40),
@PROV_genero AS VARCHAR(30),
@PROV_telefono_principal AS VARCHAR(30),
@PROV_telefono_movil AS VARCHAR(30),
@PROV_direccion AS VARCHAR(100),
@PROV_email AS VARCHAR(50),
@PROV_fecha_registro AS DATE
AS
BEGIN
INSERT INTO Proveedores (PROV_nombres,PROV_apellidos,PROV_genero,PROV_telefono_principal,PROV_telefono_movil,PROV_direccion,PROV_email,PROV_fecha_registro)
SET @PROV_ID = @@IDENTITY
VALUES (@PROV_nombres,@PROV_apellidos,@PROV_genero,@PROV_telefono_principal,@PROV_telefono_movil,@PROV_direccion,@PROV_email,@PROV_fecha_registro)
END
GO

CREATE PROCEDURE SpProveedoresActualizar
@PROV_ID AS INT,
@PROV_nombres AS VARCHAR(40),
@PROV_apellidos AS VARCHAR(40),
@PROV_genero AS VARCHAR(30),
@PROV_telefono_principal AS VARCHAR(30),
@PROV_telefono_movil AS VARCHAR(30),
@PROV_direccion AS VARCHAR(100),
@PROV_email AS VARCHAR(50),
@PROV_fecha_registro AS DATE
AS
BEGIN
UPDATE Proveedores
SET PROV_nombres = @PROV_nombres,
PROV_apellidos = @PROV_apellidos,
PROV_genero = @PROV_genero,
PROV_telefono_principal = @PROV_telefono_principal,
PROV_telefono_movil = @PROV_telefono_movil,
PROV_direccion = @PROV_direccion,
PROV_email = @PROV_email,
PROV_fecha_registro = @PROV_fecha_registro
WHERE PROV_ID = @PROV_ID
END
GO

CREATE PROCEDURE SpProveedoresEliminar
@PROV_ID AS INT
AS
BEGIN
DELETE FROM Proveedores
WHERE PROV_ID = @PROV_ID
END
GO

CREATE PROCEDURE SpProveedoresListar
AS
BEGIN
SELECT PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
END
GO

CREATE PROCEDURE SpProveedoresObtener
@PROV_ID AS INT
AS
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
WHERE PROV_ID = @PROV_ID
END
GO

CREATE PROCEDURE SpProveedoresPrimero
AS
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
ORDER BY  PROV_ID ASC
END
GO

CREATE PROCEDURE SpProveedoresUltimo
AS
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
ORDER BY  PROV_ID DESC
END
GO

CREATE PROCEDURE SpProveedoresAnterior
@PROV_ID AS INT
AS
IF(SELECT COUNT(PROV_ID) FROM Proveedores WHERE PROV_ID < @PROV_ID) > 0
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
WHERE PROV_ID < @PROV_ID
ORDER BY  PROV_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
ORDER BY  PROV_ID ASC
END
GO


CREATE PROCEDURE SpProveedoresSiguiente
@PROV_ID AS INT
AS
IF(SELECT COUNT(PROV_ID) FROM Proveedores WHERE PROV_ID > @PROV_ID) > 0
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
WHERE PROV_ID > @PROV_ID
ORDER BY  PROV_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
PROV_ID,
PROV_nombres,
PROV_apellidos,
PROV_genero,
PROV_telefono_principal,
PROV_telefono_movil,
PROV_direccion,
PROV_email,
PROV_fecha_registro
FROM Proveedores
ORDER BY  PROV_ID DESC
END
GO

