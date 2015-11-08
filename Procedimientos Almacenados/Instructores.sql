set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpInstructoresInsertar
@INST_nombres AS VARCHAR(40),
@INST_apellidos AS VARCHAR(40),
@INST_genero AS VARCHAR(30),
@INST_fecha_nacimiento AS DATE,
@INST_telefono_principal AS VARCHAR(30),
@INST_telefono_movil AS VARCHAR(30),
@INST_direccion AS VARCHAR(100),
@INST_ciudad AS VARCHAR(30),
@INST_email AS VARCHAR(50),
@INST_password AS VARCHAR(20),
@INST_tarjeta_dni AS VARCHAR(30),
@INST_numero_dni AS VARCHAR(30),
@INST_cargo AS VARCHAR(30),
@INST_profesion AS VARCHAR(30),
@INST_rol AS VARCHAR(30),
@INST_estado AS VARCHAR(30),
@INST_fecha_registro AS DATE
AS
BEGIN
INSERT INTO Instructores (INST_apellidos,INST_genero,INST_fecha_nacimiento,INST_telefono_principal,INST_telefono_movil,INST_direccion,INST_ciudad,INST_email,INST_password,INST_tarjeta_dni,INST_numero_dni,INST_cargo,INST_profesion,INST_rol,INST_estado,INST_fecha_registro)
SET @INST_numero_dni = @@IDENTITY
VALUES (@INST_apellidos,@INST_genero,@INST_fecha_nacimiento,@INST_telefono_principal,@INST_telefono_movil,@INST_direccion,@INST_ciudad,@INST_email,@INST_password,@INST_tarjeta_dni,@INST_numero_dni,@INST_cargo,@INST_profesion,@INST_rol,@INST_estado,@INST_fecha_registro)
END
GO

CREATE PROCEDURE SpInstructoresActualizar
@INST_nombres AS VARCHAR(40),
@INST_apellidos AS VARCHAR(40),
@INST_genero AS VARCHAR(30),
@INST_fecha_nacimiento AS DATE,
@INST_telefono_principal AS VARCHAR(30),
@INST_telefono_movil AS VARCHAR(30),
@INST_direccion AS VARCHAR(100),
@INST_ciudad AS VARCHAR(30),
@INST_email AS VARCHAR(50),
@INST_password AS VARCHAR(20),
@INST_tarjeta_dni AS VARCHAR(30),
@INST_numero_dni AS VARCHAR(30),
@INST_cargo AS VARCHAR(30),
@INST_profesion AS VARCHAR(30),
@INST_rol AS VARCHAR(30),
@INST_estado AS VARCHAR(30),
@INST_fecha_registro AS DATE
AS
BEGIN
UPDATE Instructores
SET INST_apellidos = @INST_apellidos,
INST_genero = @INST_genero,
INST_fecha_nacimiento = @INST_fecha_nacimiento,
INST_telefono_principal = @INST_telefono_principal,
INST_telefono_movil = @INST_telefono_movil,
INST_direccion = @INST_direccion,
INST_ciudad = @INST_ciudad,
INST_email = @INST_email,
INST_password = @INST_password,
INST_tarjeta_dni = @INST_tarjeta_dni,
INST_numero_dni = @INST_numero_dni,
INST_cargo = @INST_cargo,
INST_profesion = @INST_profesion,
INST_rol = @INST_rol,
INST_estado = @INST_estado,
INST_fecha_registro = @INST_fecha_registro
WHERE INST_nombres = @INST_nombres
END
GO

CREATE PROCEDURE SpInstructoresEliminar
@INST_numero_dni AS VARCHAR(30)
AS
BEGIN
DELETE FROM Instructores
WHERE INST_numero_dni = @INST_numero_dni
END
GO

CREATE PROCEDURE SpInstructoresListar
AS
BEGIN
SELECT INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
END
GO

CREATE PROCEDURE SpInstructoresObtener
@INST_numero_dni AS VARCHAR(30)
AS
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
WHERE INST_numero_dni = @INST_numero_dni
END
GO

CREATE PROCEDURE SpInstructoresPrimero
AS
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
ORDER BY  INST_numero_dni ASC
END
GO

CREATE PROCEDURE SpInstructoresUltimo
AS
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
ORDER BY  INST_numero_dni DESC
END
GO

CREATE PROCEDURE SpInstructoresAnterior
@INST_numero_dni AS VARCHAR(30)
AS
IF(SELECT COUNT(INST_numero_dni) FROM Instructores WHERE INST_numero_dni < @INST_numero_dni) > 0
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
WHERE INST_numero_dni < @INST_numero_dni
ORDER BY  INST_numero_dni DESC
END
ELSE
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
ORDER BY  INST_numero_dni ASC
END
GO


CREATE PROCEDURE SpInstructoresSiguiente
@INST_numero_dni AS VARCHAR(30)
AS
IF(SELECT COUNT(INST_numero_dni) FROM Instructores WHERE INST_numero_dni > @INST_numero_dni) > 0
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
WHERE INST_numero_dni > @INST_numero_dni
ORDER BY  INST_numero_dni ASC
END
ELSE
BEGIN
SELECT TOP 1 
INST_nombres,
INST_apellidos,
INST_genero,
INST_fecha_nacimiento,
INST_telefono_principal,
INST_telefono_movil,
INST_direccion,
INST_ciudad,
INST_email,
INST_password,
INST_tarjeta_dni,
INST_numero_dni,
INST_cargo,
INST_profesion,
INST_rol,
INST_estado,
INST_fecha_registro
FROM Instructores
ORDER BY  INST_numero_dni DESC
END
GO

