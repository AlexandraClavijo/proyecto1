USE ProtesisOrtesis;
GO

INSERT INTO Pacientes
	( PACI_nombres, PACI_apellidos, PACI_genero, PACI_fecha_nacimiento, PACI_telefono_principal, PACI_telefono_movil, PACI_direccion, PACI_ciudad, PACI_email, PACI_tarjeta_dni, PACI_numero_dni, PACI_password, PACI_rol, PACI_estado, PACI_fecha_registro )
VALUES
	('NELSON DAVID'   ,'RINCON CHOQUE'       ,'Masculino','1996-10-03','2516627','3007572717','CARRERA 88#73-46'                ,'Bogota D.C.','nelsondavid645@hotmail.com' ,'Cedula de Ciudadania','1014218466','1234','Paciente','Activo','2015-01-19'),
	('EDWIN JAVIER'   ,'NIETO NAVARRO'       ,'Masculino','1997-09-04','3646081','3125051646','KRA 91 B PATIO BONITO LAS BRISAS','Bogota D.C.','eedwinjavier687@hotmail.com','Cedula de Ciudadania','1109380848','1234','Paciente','Activo','2015-01-21'),
	('EDER AMIN'      ,'PULIDO GAMBOA'       ,'Masculino','1996-07-21','4608949','3138327033','CRA 81C N 14-43'                 ,'Bogota D.C.','edeaminpu12@hotmail.com'    ,'Cedula de Ciudadania','8324878577','1234','Paciente','Activo','2015-01-23'),
	('HANZ'           ,'SAENZ GOMEZ'         ,'Masculino','1997-10-30','7809228','3044766614','CALLE 36 B SUR 5-60 PISO 3'      ,'Bogota D.C.','hanz63s@hotmail.com'        ,'Cedula de Ciudadania','1023903457','1234','Paciente','Activo','2015-01-23'),
	('CRISTIAN CAMILO','MARULANDA SINESTERRA','Masculino','1994-04-10','7128886','3153794847','CR 94C N 42F18 SUR'              ,'Bogota D.C.','crusmrail56@hotmail.com'    ,'Cedula de Ciudadania','1030621255','1234','Paciente','Activo','2015-01-24'),
	('HAROLD STIVEN'  ,'VERONA LOZADA'       ,'Masculino','1998-03-01','5106917','3124098972','CRA 78 JBIS Nª 50-11 SUR'        ,'Bogota D.C.','haroldsti78@hotmail.com'    ,'Cedula de Ciudadania','1030665191','1234','Paciente','Activo','2015-02-05'),
	('OSCAR ANDRES'   ,'ROJAS POVEDA'        ,'Masculino','1993-04-01','6835884','3212364225','CALLE 129 C NO 101-27'           ,'Bogota D.C.','oscreandr5@hotmail.com'     ,'Cedula de Ciudadania','8006373700','1234','Paciente','Activo','2015-02-08'),
	('ENEUDIS'        ,'LOPEZ FLOREZ'        ,'Femenino' ,'1992-08-04','7188089','3133906447','DIAGONAL 69G BIS  40A 53'        ,'Bogota D.C.','eneudus367@hotmail.com'     ,'Cedula de Ciudadania','9610211056','1234','Paciente','Activo','2015-02-10'),
	('ANDERSON RAFAEL','VALDEZ RAMIREZ'      ,'Masculino','1994-07-07','7821377','3125584287','CRA 3 # 12-21 SUR'               ,'Bogota D.C.','andersonraf45@hotmail.com'  ,'Tarjeta de Identidad','9707101120','1234','Paciente','Activo','2015-02-12'),
	('ANGGIE JULIETH' ,'AVILA AMAYA'         ,'Femenino' ,'1993-09-06','7848221','3125584654','CRA 90 A N 54 24 SUR'            ,'Bogota D.C.','anggiejiugke4@hotmail.com'  ,'Cedula de Ciudadania','1033679773','1234','Paciente','Activo','2015-02-13'),
	('JEISSON FABIAN' ,'BOBADILLA GARAY'     ,'Masculino','1992-08-15','4385778','3213549598','CRA 314265 SUR'                  ,'Bogota D.C.','jeiss789@hotmail.com'       ,'Cedula de Ciudadania','1016033394','1234','Paciente','Activo','2015-02-14'),
	('LADY VANNESA'   ,'MANRIQUE RODRIGUEZ'  ,'Femenino' ,'1990-07-17','5401898','3114514012','CLL 71B 87 12'                   ,'Bogota D.C.','ladyvanesssa@hotmail.com'   ,'Cedula de Ciudadania','1001269867','1234','Paciente','Activo','2015-02-14'),
	('MAYRA ALEJANDRA','AREVALO UMBARILA'    ,'Femenino' ,'1990-03-10','3010782','3138367857','CRR 81 Nº 70 A 42'               ,'Bogota D.C.','mayralaengare@hotmail.com'  ,'Cedula de Ciudadania','1014223559','1234','Paciente','Activo','2015-02-18'),
	('NATHALIE'       ,'RAMIREZ VELANDIA'    ,'Femenino' ,'1996-02-19','7824126','3138367857','CR 72 I BIS NO 39 A  06'         ,'Bogota D.C.','nathalierajiv@hotmail.com'  ,'Cedula de Ciudadania','1014225826','1234','Paciente','Activo','2015-02-18'),
	('LUIS FELIPE'    ,'LAGUNA MORENO'       ,'Masculino','1996-01-24','4825488','3115393496','CLL 2  91 11'                    ,'Bogota D.C.','luisfelp7@hotmail.com'      ,'Cedula de Ciudadania','1015397752','1234','Paciente','Activo','2015-02-18');

SELECT * FROM Pacientes;
TRUNCATE TABLE Pacientes;



UPDATE Pacientes
	SET
		PACI_rol = 'aa'
	WHERE PACI_numero_dni = '1014218466';

SELECT [PACI_rol] FROM [dbo].[Pacientes] WHERE PACI_numero_dni = '1014218466';

UPDATE Pacientes
	SET
		PACI_nombres = 'Addison Jesus'
	WHERE PACI_numero_dni = '1014218465';

UPDATE Pacientes
	SET
		PACI_nombres = 'Addison JESUS'
	WHERE PACI_numero_dni = '1014218466';

DELETE Pacientes
	WHERE PACI_numero_dni = '1014218465';

SELECT PACI_nombres, PACI_numero_dni, PACI_rol FROM Pacientes;



UPDATE [dbo].[Pacientes]
	SET
		PACI_nombres = 'Addison Jesus',
		PACI_apellidos = 'Jimenez Beltran',
		PACI_genero = 'Masculino',
		PACI_fecha_nacimiento = '1996-10-03',
		PACI_telefono_principal = '7344900',
		PACI_telefono_movil = '3202109397',
		PACI_direccion = 'Calle 72',
		PACI_ciudad = 'Bogota D.C.',
		PACI_email = 'addison214@hotmail.com',
		PACI_tarjeta_dni = '10',
		PACI_numero_dni = '1014218466',
		PACI_password = '1234',
		PACI_rol = 'Paciente',
		PACI_estado = 'Activo',
		PACI_fecha_registro = '2015-09-15'
	WHERE PACI_numero_dni = '1014218466';

SELECT * FROM [dbo].[Pacientes] WHERE PACI_numero_dni = '1014218466';