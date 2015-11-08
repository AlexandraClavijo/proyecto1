set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpProgramar_CitasInsertar
@CITA_ID AS INT,
@INST_nombres AS VARCHAR(40),
@INST_apellidos AS VARCHAR(40),
@PACI_nombres AS VARCHAR(40),
@PACI_apellidos AS VARCHAR(40),
@PACI_tarjeta_dni AS VARCHAR(30),
@PACI_numero_dni AS VARCHAR(30),
@CITA_lugar AS VARCHAR(50),
@CITA_fecha AS DATE,
@CITA_hora AS TIME,
@CITA_estado AS VARCHAR(50)
AS
BEGIN
INSERT INTO Programar_Citas (INST_nombres,INST_apellidos,PACI_nombres,PACI_apellidos,PACI_tarjeta_dni,PACI_numero_dni,CITA_lugar,CITA_fecha,CITA_hora,CITA_estado)
SET @CITA_ID = @@IDENTITY
VALUES (@INST_nombres,@INST_apellidos,@PACI_nombres,@PACI_apellidos,@PACI_tarjeta_dni,@PACI_numero_dni,@CITA_lugar,@CITA_fecha,@CITA_hora,@CITA_estado)
END
GO

CREATE PROCEDURE SpProgramar_CitasActualizar
@CITA_ID AS INT,
@INST_nombres AS VARCHAR(40),
@INST_apellidos AS VARCHAR(40),
@PACI_nombres AS VARCHAR(40),
@PACI_apellidos AS VARCHAR(40),
@PACI_tarjeta_dni AS VARCHAR(30),
@PACI_numero_dni AS VARCHAR(30),
@CITA_lugar AS VARCHAR(50),
@CITA_fecha AS DATE,
@CITA_hora AS TIME,
@CITA_estado AS VARCHAR(50)
AS
BEGIN
UPDATE Programar_Citas
SET INST_nombres = @INST_nombres,
INST_apellidos = @INST_apellidos,
PACI_nombres = @PACI_nombres,
PACI_apellidos = @PACI_apellidos,
PACI_tarjeta_dni = @PACI_tarjeta_dni,
PACI_numero_dni = @PACI_numero_dni,
CITA_lugar = @CITA_lugar,
CITA_fecha = @CITA_fecha,
CITA_hora = @CITA_hora,
CITA_estado = @CITA_estado
WHERE CITA_ID = @CITA_ID
END
GO

CREATE PROCEDURE SpProgramar_CitasEliminar
@CITA_ID AS INT
AS
BEGIN
DELETE FROM Programar_Citas
WHERE CITA_ID = @CITA_ID
END
GO

CREATE PROCEDURE SpProgramar_CitasListar
AS
BEGIN
SELECT CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
END
GO

CREATE PROCEDURE SpProgramar_CitasObtener
@CITA_ID AS INT
AS
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
WHERE CITA_ID = @CITA_ID
END
GO

CREATE PROCEDURE SpProgramar_CitasPrimero
AS
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
ORDER BY  CITA_ID ASC
END
GO

CREATE PROCEDURE SpProgramar_CitasUltimo
AS
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
ORDER BY  CITA_ID DESC
END
GO

CREATE PROCEDURE SpProgramar_CitasAnterior
@CITA_ID AS INT
AS
IF(SELECT COUNT(CITA_ID) FROM Programar_Citas WHERE CITA_ID < @CITA_ID) > 0
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
WHERE CITA_ID < @CITA_ID
ORDER BY  CITA_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
ORDER BY  CITA_ID ASC
END
GO


CREATE PROCEDURE SpProgramar_CitasSiguiente
@CITA_ID AS INT
AS
IF(SELECT COUNT(CITA_ID) FROM Programar_Citas WHERE CITA_ID > @CITA_ID) > 0
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
WHERE CITA_ID > @CITA_ID
ORDER BY  CITA_ID ASC
END
ELSE
BEGIN
SELECT TOP 1 
CITA_ID,
INST_nombres,
INST_apellidos,
PACI_nombres,
PACI_apellidos,
PACI_tarjeta_dni,
PACI_numero_dni,
CITA_lugar,
CITA_fecha,
CITA_hora,
CITA_estado
FROM Programar_Citas
ORDER BY  CITA_ID DESC
END
GO

