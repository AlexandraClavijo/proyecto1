USE ProtesisOrtesis;
GO

set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SpPacientesInsertar
	@PACI_nombres AS VARCHAR(40),
	@PACI_apellidos AS VARCHAR(40),
	@PACI_genero AS VARCHAR(30),
	@PACI_fecha_nacimiento AS DATE,
	@PACI_telefono_principal AS VARCHAR(30),
	@PACI_telefono_movil AS VARCHAR(30),
	@PACI_direccion AS VARCHAR(100),
	@PACI_ciudad AS VARCHAR(30),
	@PACI_email AS VARCHAR(50),
	@PACI_tarjeta_dni AS VARCHAR(30),
	@PACI_numero_dni AS VARCHAR(30),
	@PACI_password AS VARCHAR(20),
	@PACI_rol AS VARCHAR(30),
	@PACI_estado AS VARCHAR(30),
	@PACI_fecha_registro AS DATE
AS
BEGIN
	INSERT INTO Pacientes
		(
			PACI_apellidos,
			PACI_genero,
			PACI_fecha_nacimiento,
			PACI_telefono_principal,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_password,
			PACI_rol,
			PACI_estado,
			PACI_fecha_registro
		)
	VALUES
		(
			@PACI_apellidos,
			@PACI_genero,
			@PACI_fecha_nacimiento,
			@PACI_telefono_principal,
			@PACI_telefono_movil,
			@PACI_direccion,
			@PACI_ciudad,
			@PACI_email,
			@PACI_tarjeta_dni,
			@PACI_numero_dni,
			@PACI_password,
			@PACI_rol,
			@PACI_estado,
			@PACI_fecha_registro
		)
END
GO

CREATE PROCEDURE SpPacientesActualizar
	@PACI_nombres AS VARCHAR(40),
	@PACI_apellidos AS VARCHAR(40),
	@PACI_genero AS VARCHAR(30),
	@PACI_fecha_nacimiento AS DATE,
	@PACI_telefono_principal AS VARCHAR(30),
	@PACI_telefono_movil AS VARCHAR(30),
	@PACI_direccion AS VARCHAR(100),
	@PACI_ciudad AS VARCHAR(30),
	@PACI_email AS VARCHAR(50),
	@PACI_tarjeta_dni AS VARCHAR(30),
	@PACI_numero_dni AS VARCHAR(30),
	@PACI_password AS VARCHAR(20),
	@PACI_rol AS VARCHAR(30),
	@PACI_estado AS VARCHAR(30),
	@PACI_fecha_registro AS DATE
AS
BEGIN
	UPDATE Pacientes
		SET
			PACI_apellidos = @PACI_apellidos,
			PACI_genero = @PACI_genero,
			PACI_fecha_nacimiento = @PACI_fecha_nacimiento,
			PACI_telefono_principal = @PACI_telefono_principal,
			PACI_telefono_movil = @PACI_telefono_movil,
			PACI_direccion = @PACI_direccion,
			PACI_ciudad = @PACI_ciudad,
			PACI_email = @PACI_email,
			PACI_tarjeta_dni = @PACI_tarjeta_dni,
			PACI_numero_dni = @PACI_numero_dni,
			PACI_password = @PACI_password,
			PACI_rol = @PACI_rol,
			PACI_estado = @PACI_estado,
			PACI_fecha_registro = @PACI_fecha_registro
		WHERE PACI_nombres = @PACI_nombres
END
GO

CREATE PROCEDURE SpPacientesEliminar
	@PACI_numero_dni AS VARCHAR(30)
AS
BEGIN
	DELETE FROM Pacientes
	WHERE PACI_numero_dni = @PACI_numero_dni
END
GO

CREATE PROCEDURE SpPacientesListar
AS
BEGIN
	SELECT
		PACI_nombres,
		PACI_apellidos,
		PACI_genero,
		PACI_fecha_nacimiento,
		PACI_telefono_principal,
		PACI_telefono_movil,
		PACI_direccion,
		PACI_ciudad,
		PACI_email,
		PACI_tarjeta_dni,
		PACI_numero_dni,
		PACI_password,
		PACI_rol,
		PACI_estado,
		PACI_fecha_registro
	FROM Pacientes
END
GO

CREATE PROCEDURE SpPacientesObtener
	@PACI_numero_dni AS VARCHAR(30)
AS
BEGIN
	SELECT TOP 1 
		PACI_nombres,
		PACI_apellidos,
		PACI_genero,
		PACI_fecha_nacimiento,
		PACI_telefono_principal,
		PACI_telefono_movil,
		PACI_direccion,
		PACI_ciudad,
		PACI_email,
		PACI_tarjeta_dni,
		PACI_numero_dni,
		PACI_password,
		PACI_rol,
		PACI_estado,
		PACI_fecha_registro
	FROM Pacientes
	WHERE PACI_numero_dni = @PACI_numero_dni
END
GO

CREATE PROCEDURE SpPacientesPrimero
AS
BEGIN
	SELECT TOP 1 
		PACI_nombres,
		PACI_apellidos,
		PACI_genero,
		PACI_fecha_nacimiento,
		PACI_telefono_principal,
		PACI_telefono_movil,
		PACI_direccion,
		PACI_ciudad,
		PACI_email,
		PACI_tarjeta_dni,
		PACI_numero_dni,
		PACI_password,
		PACI_rol,
		PACI_estado,
		PACI_fecha_registro
	FROM Pacientes
	ORDER BY  PACI_numero_dni ASC
END
GO

CREATE PROCEDURE SpPacientesUltimo
AS
BEGIN
	SELECT TOP 1 
		PACI_nombres,
		PACI_apellidos,
		PACI_genero,
		PACI_fecha_nacimiento,
		PACI_telefono_principal,
		PACI_telefono_movil,
		PACI_direccion,
		PACI_ciudad,
		PACI_email,
		PACI_tarjeta_dni,
		PACI_numero_dni,
		PACI_password,
		PACI_rol,
		PACI_estado,
		PACI_fecha_registro
	FROM Pacientes
	ORDER BY  PACI_numero_dni DESC
END
GO

CREATE PROCEDURE SpPacientesAnterior
	@PACI_numero_dni AS VARCHAR(30)
AS
IF(SELECT COUNT(PACI_numero_dni) FROM Pacientes WHERE PACI_numero_dni < @PACI_numero_dni) > 0
	BEGIN
		SELECT TOP 1 
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_fecha_nacimiento,
			PACI_telefono_principal,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_password,
			PACI_rol,
			PACI_estado,
			PACI_fecha_registro
		FROM Pacientes
		WHERE PACI_numero_dni < @PACI_numero_dni
		ORDER BY  PACI_numero_dni DESC
	END
ELSE
	BEGIN
		SELECT TOP 1 
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_fecha_nacimiento,
			PACI_telefono_principal,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_password,
			PACI_rol,
			PACI_estado,
			PACI_fecha_registro
		FROM Pacientes
		ORDER BY  PACI_numero_dni ASC
	END
GO


CREATE PROCEDURE SpPacientesSiguiente
	@PACI_numero_dni AS VARCHAR(30)
AS
IF(SELECT COUNT(PACI_numero_dni) FROM Pacientes WHERE PACI_numero_dni > @PACI_numero_dni) > 0
	BEGIN
		SELECT TOP 1 
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_fecha_nacimiento,
			PACI_telefono_principal,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_password,
			PACI_rol,
			PACI_estado,
			PACI_fecha_registro
		FROM Pacientes
		WHERE PACI_numero_dni > @PACI_numero_dni
		ORDER BY  PACI_numero_dni ASC
	END
ELSE
	BEGIN
		SELECT TOP 1 
			PACI_nombres,
			PACI_apellidos,
			PACI_genero,
			PACI_fecha_nacimiento,
			PACI_telefono_principal,
			PACI_telefono_movil,
			PACI_direccion,
			PACI_ciudad,
			PACI_email,
			PACI_tarjeta_dni,
			PACI_numero_dni,
			PACI_password,
			PACI_rol,
			PACI_estado,
			PACI_fecha_registro
			FROM Pacientes
		ORDER BY  PACI_numero_dni DESC
	END
GO

