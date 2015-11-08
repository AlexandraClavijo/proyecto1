BEGIN
	--IF (SELECT COUNT(PACI_numero_dni) FROM Pacientes WHERE PACI_genero = 'Masculino' AND PACI_tarjeta_dni = 'Cedula de Ciudadania' AND PACI_rol = 'Paciente') > 0
		--BEGIN
			--SELECT COUNT(PACI_numero_dni) FROM Pacientes WHERE PACI_genero = 'Masculino' AND PACI_tarjeta_dni = 'Cedula de Ciudadania' AND PACI_rol = 'Paciente';
		--END
	--ELSE IF (SELECT COUNT(PACI_numero_dni) FROM Pacientes WHERE PACI_genero = 'Femenino' AND PACI_tarjeta_dni = 'Cedula de Ciudadania' AND PACI_rol = 'Paciente') > 0
		--BEGIN
			SELECT COUNT(PACI_numero_dni)
			AS 'REGISTROS: Datos Masculino'
			FROM Pacientes
			WHERE PACI_genero = 'Masculino' AND PACI_tarjeta_dni = 'C.C.' AND PACI_rol = 'Paciente';

			SELECT COUNT(PACI_numero_dni)
			AS 'REGISTRO: Datos Cedula de Ciudadania'

			SELECT * FROM Pacientes
			UPDATE Pacientes
				SET
					PACI_tarjeta_dni = 'T.I.'
				WHERE PACI_numero_dni = '1109380848' OR PACI_numero_dni = '1030665191'
		--END
END




BEGIN
	DECLARE
		@VARIABLE_A INT,
		@VARIABLE_B INT,
		@FECHA_HOY DATE;

	SET
		@VARIABLE_A=4;
	SELECT
		@VARIABLE_B=8,
		@FECHA_HOY = GETDATE();

	SELECT @VARIABLE_A+@VARIABLE_B;
	PRINT CONVERT(VARCHAR,@FECHA_HOY,112)+'_'+CONVERT(VARCHAR,@VARIABLE_B);
END