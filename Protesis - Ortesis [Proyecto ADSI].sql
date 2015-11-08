CREATE DATABASE ProtesisOrtesis;
USE ProtesisOrtesis;

/*#################################################################################################*/
					/*CREANDO LAS TABLAS PARA LA BASE DE DATOS*/
/*#################################################################################################*/
IF object_id ('INSTRUCTOR') IS NOT NULL DROP TABLE INSTRUCTOR;
CREATE TABLE INSTRUCTOR(
	INST_ID INT IDENTITY(1,1) NOT NULL,
	INST_nombres VARCHAR(40) NOT NULL,
	INST_apellidos VARCHAR(40) NOT NULL,
	INST_genero VARCHAR(30) NOT NULL,
	INST_fecha_nacimiento DATE NOT NULL,
	INST_telefono_principal VARCHAR(30) NOT NULL,
	INST_telefono_movil VARCHAR(30) NOT NULL,
	INST_direccion VARCHAR(100) NOT NULL,
	INST_ciudad VARCHAR(30) NOT NULL,
	INST_email VARCHAR(50) NOT NULL,
	INST_password VARCHAR(20) NOT NULL,
	INST_tarjeta_dni VARCHAR(30) NOT NULL,
	INST_numero_dni VARCHAR(30) NOT NULL,
	INST_cargo VARCHAR(30) NOT NULL,
	INST_profesion VARCHAR(30) NOT NULL,
	INST_rol VARCHAR(30) NOT NULL,
	INST_estado VARCHAR(30) NOT NULL,
	INST_fecha_registro DATE NOT NULL
);

IF object_id('PACIENTE') IS NOT NULL DROP TABLE PACIENTE;
CREATE TABLE PACIENTE(
	PACI_ID INT IDENTITY(1,1) NOT NULL,
	PACI_nombres VARCHAR(40) NOT NULL,
	PACI_apellidos VARCHAR(40) NOT NULL,
	PACI_genero VARCHAR(30) NOT NULL,
	PACI_fecha_nacimiento DATE NOT NULL,
	PACI_telefono_principal VARCHAR(30) NOT NULL,
	PACI_telefono_movil VARCHAR(30) NOT NULL,
	PACI_direccion VARCHAR(100) NOT NULL,
	PACI_ciudad VARCHAR(30) NOT NULL,
	PACI_email VARCHAR(50) NOT NULL,
	PACI_tarjeta_dni VARCHAR(30) NOT NULL,
	PACI_numero_dni VARCHAR(30) NOT NULL,
	PACI_password VARCHAR(20) NOT NULL,
	PACI_rol VARCHAR(30) NOT NULL,
	PACI_estado VARCHAR(30) NOT NULL,
	PACI_fecha_registro DATE NOT NULL
);

IF object_id('PROVEEDOR') IS NOT NULL DROP TABLE PROVEEDOR;
CREATE TABLE PROVEEDOR(
	PROV_ID INT IDENTITY(1,1) NOT NULL,
	PROV_nombres VARCHAR(40) NOT NULL,
	PROV_apellidos VARCHAR(40) NOT NULL,
	PROV_genero VARCHAR(30) NOT NULL,
	PROV_telefono_principal VARCHAR(30) NOT NULL,
	PROV_telefono_movil VARCHAR(30) NOT NULL,
	PROV_direccion VARCHAR(100) NOT NULL,
	PROV_email VARCHAR(50) NOT NULL,
	PROV_fecha_registro DATE NOT NULL
);

IF object_id('CITAS') IS NOT NULL DROP TABLE CITAS;
CREATE TABLE CITAS(
	CITA_ID INT IDENTITY(1,1) NOT NULL,
	INST_nombres VARCHAR(40) NOT NULL,
	INST_apellidos VARCHAR(40) NOT NULL,
	PACI_nombres VARCHAR(40) NOT NULL,
	PACI_apellidos VARCHAR(40) NOT NULL,
	PACI_tarjeta_dni VARCHAR(30) NOT NULL,
	PACI_numero_dni VARCHAR(30) NOT NULL,
	CITA_lugar VARCHAR(50) NOT NULL,
	CITA_fecha date NOT NULL,
	CITA_hora TIME NOT NULL,
	CITA_estado VARCHAR(50) NOT NULL
);

IF object_id('PRODUCTO') IS NOT NULL DROP TABLE PRODUCTO;
CREATE TABLE PRODUCTO(
	PROD_ID INT IDENTITY(1,1) NOT NULL,
	PROD_nombre VARCHAR(50) NOT NULL,
	PROD_tipo VARCHAR(50) NOT NULL,
	PROD_descripcion VARCHAR(150) NOT NULL,
	PROD_cantidad INT NOT NULL,
	PROD_fecha_registro DATE NOT NULL
);

IF object_id('HISTORIAL_CLINICO_REGISTROS') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_REGISTROS;
CREATE TABLE HISTORIAL_CLINICO_REGISTROS(
	HIST_ID INT IDENTITY(1,1) NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL
);

IF object_id('HISTORIAL_CLINICO_DATOS_GENERALES_PACIENTE_ANAMNESIS') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_DATOS_GENERALES_PACIENTE_ANAMNESIS;
CREATE TABLE HISTORIAL_CLINICO_DATOS_GENERALES_PACIENTE_ANAMNESIS(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_DGPA_ID INT IDENTITY(1,1) NOT NULL,

	PACI_nombres VARCHAR(40) NOT NULL,
	PACI_apellidos VARCHAR(40) NOT NULL,
	HIST_EPS VARCHAR(30) NOT NULL,
	PACI_genero VARCHAR(30) NOT NULL,
	HIST_EDAD INT NOT NULL,
	HIST_ESTATURA VARCHAR(10) NOT NULL,
	HIST_PESO VARCHAR(10) NOT NULL,
	HIST_ESTADO_CIVIL VARCHAR(30) NOT NULL,
	PACI_telefono_principal VARCHAR(30) NOT NULL,
	PACI_email VARCHAR(50) NOT NULL,
	PACI_tarjeta_dni VARCHAR(30) NOT NULL,
	PACI_numero_dni VARCHAR(30) NOT NULL,
	PACI_telefono_movil VARCHAR(30) NOT NULL,
	PACI_direccion VARCHAR(100) NOT NULL,
	PACI_ciudad VARCHAR(30) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS;
CREATE TABLE HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_PREA_ID int IDENTITY(1,1) NOT NULL,

	HIST_persona_responsable VARCHAR(40) NOT NULL,
	HIST_parentesco VARCHAR(40) NOT NULL,
	HIST_paren_tarjeta_dni VARCHAR(50) NOT NULL,
	HIST_paren_numero_dni VARCHAR(30) NOT NULL,
	HIST_paren_direccion VARCHAR(100) NOT NULL,
	HIST_paren_telefono_principal VARCHAR(30) NOT NULL,
	HIST_paren_telefono_movil VARCHAR(30) NOT NULL,
	HIST_paren_ciudad VARCHAR(30) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_ESTADO_GENERAL_SALUD_ANAMNESIS') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_ESTADO_GENERAL_SALUD_ANAMNESIS;
CREATE TABLE HISTORIAL_CLINICO_ESTADO_GENERAL_SALUD_ANAMNESIS(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_EGSA_ID INT IDENTITY(1,1),
	HIST_problemas_cardiovasculares VARCHAR(50) NOT NULL,
	HIST_problemas_circulatorios VARCHAR(50) NOT NULL,
	HIST_diabetes VARCHAR(50) NOT NULL,
	HIST_neuropatia_sistema_nervioso VARCHAR(50) NOT NULL,
	HIST_alergias VARCHAR(50) NOT NULL,
	HIST_coordinacion_equilibrio_mareo VARCHAR(50) NOT NULL,
	HIST_infecciones VARCHAR(50) NOT NULL,
	HIST_toma_medicamentos VARCHAR(50) NOT NULL,
	HIST_efectos_medicacion VARCHAR(50) NOT NULL,
	HIST_medicamentos_dosis VARCHAR(50) NOT NULL,
	HIST_otros_sintomas VARCHAR(50) NOT NULL,
	HIST_otras_enfermedades VARCHAR(50) NOT NULL,
	HIST_dolores VARCHAR(50) NOT NULL,
	HIST_otras_limitaciones VARCHAR(50) NOT NULL,
	HIST_atencedentes_personales VARCHAR(50) NOT NULL,
	HIST_antecedentes_familiares VARCHAR(50) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_ENTORNO_SOCIAL_DIAGNOSTICO') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_ENTORNO_SOCIAL_DIAGNOSTICO;
CREATE TABLE HISTORIAL_CLINICO_ENTORNO_SOCIAL_DIAGNOSTICO(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_ENSD_ID INT IDENTITY(1,1),
	HIST_tipo_vivienda VARCHAR(50) NOT NULL,
	HIST_numero_pisos INT NOT NULL,
	HIST_cond_vivienda VARCHAR(50) NOT NULL,
	HIST_tipo_terreno VARCHAR(50) NOT NULL,
	HIST_zona_vivienda VARCHAR(50) NOT NULL,
	HIST_espacios_acseso VARCHAR(50) NOT NULL,
	HIST_personas_que_vive VARCHAR(50) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_ACTIVIDADES_DIARIAS_DIAGNOSTICO') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_ACTIVIDADES_DIARIAS_DIAGNOSTICO;
CREATE TABLE HISTORIAL_CLINICO_ACTIVIDADES_DIARIAS_DIAGNOSTICO(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_ACDD_ID INT IDENTITY(1,1),
	HIST_upcacion VARCHAR(50) NOT NULL,
	HIST_actividades_diarias VARCHAR(50) NOT NULL,
	HIST_escaleras_ramplas VARCHAR(50) NOT NULL,
	HIST_MAX_DISTANCIA_CAMINANDO VARCHAR(50) NOT NULL,
	HIST_tiempo_maxX_caminar VARCHAR(50) NOT NULL,
	HIST_medios_transportes VARCHAR(50) NOT NULL,
	HIST_ayudas_tecnicas VARCHAR(50) NOT NULL,
	HIST_ayuda_personal_cuidador VARCHAR(50) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_CHEKEO_DIAGNOSTICO') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_CHEKEO_DIAGNOSTICO;
CREATE TABLE HISTORIAL_CLINICO_CHEKEO_DIAGNOSTICO(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_CHED_ID INT IDENTITY(1,1),
	HIST_principal_patologia VARCHAR(50) NOT NULL,
	HIST_zona_afectadas VARCHAR(50) NOT NULL,
	HIST_diagnostico_o_evolucion_enfermedad VARCHAR(200) NOT NULL,
	HIST_dolor_especifico VARCHAR(50) NOT NULL,
	HIST_tipo_dolor_especifico VARCHAR(50) NOT NULL,
	HIST_valor VARCHAR(50) NOT NULL,
	HIST_tiempo VARCHAR(50) NOT NULL,
	HIST_sensibilidad VARCHAR(50) NOT NULL,
	HIST_desc VARCHAR(50) NOT NULL,
	HIST_zonas_sensibles VARCHAR(50) NOT NULL,
	HIST_zonas_maltratadas VARCHAR(50) NOT NULL,
	HIST_tipo_zonas_maltratadas VARCHAR(50) NOT NULL,
	HIST_sicatrizacion VARCHAR(50) NOT NULL,
	HIST_condcion_piel VARCHAR(50) NOT NULL,
	HIST_areas_anormales VARCHAR(50) NOT NULL,
	HIST_atrofia_volumen VARCHAR(50) NOT NULL,
	HIST_contracturas VARCHAR(50) NOT NULL,
	HIST_diagnostico_aritculaciones_derecha VARCHAR(50) NOT NULL,
	HIST_diagnostico_aritculaciones_izquierda VARCHAR(50) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_RANGO_MOVIMIENTO_EXAMEN_FISICO') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_RANGO_MOVIMIENTO_EXAMEN_FISICO;
CREATE TABLE HISTORIAL_CLINICO_RANGO_MOVIMIENTO_EXAMEN_FISICO(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_RMEF_ID INT IDENTITY(1,1),

	HIST_acti_cadera_ext_derecha VARCHAR(50) NOT NULL,
	HIST_acti_cadera_ext_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_cadera_ext_contractura VARCHAR(50) NOT NULL,
	HIST_acti_cadera_flex_derecha VARCHAR(50) NOT NULL,
	HIST_acti_cadera_flex_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_cadera_flex_contractura VARCHAR(50) NOT NULL,
	HIST_acti_cadera_add_derecha VARCHAR(50) NOT NULL,
	HIST_acti_cadera_add_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_cadera_add_contractura VARCHAR(50) NOT NULL,
	HIST_acti_cadera_abd_derecha VARCHAR(50) NOT NULL,
	HIST_acti_cadera_abd_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_cadera_abd_contractura VARCHAR(50) NOT NULL,
	HIST_acti_cadera_r_int_derecha VARCHAR(50) NOT NULL,
	HIST_acti_cadera_r_int_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_cadera_r_int_contractura VARCHAR(50) NOT NULL,
	HIST_acti_cadera_r_ext_derecha VARCHAR(50) NOT NULL,
	HIST_acti_cadera_r_ext_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_cadera_r_ext_contractura VARCHAR(50) NOT NULL,
	HIST_acti_rodilla_ext_derecha VARCHAR(50) NOT NULL,
	HIST_acti_rodilla_ext_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_rodilla_ext_contractura VARCHAR(50) NOT NULL,
	HIST_acti_rodilla_flex_derecha VARCHAR(50) NOT NULL,
	HIST_acti_rodilla_flex_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_rodilla_flex_contractura VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_dorsi_derecha VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_dorsi_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_dorsi_contractura VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_planta_derecha VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_planta_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_planta_contractura VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_inver_derecha VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_inver_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_inver_contractura VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_ever_derecha VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_ever_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_tobillo_ever_contractura VARCHAR(50) NOT NULL,
	HIST_acti_flex_ext_pie_derecha VARCHAR(50) NOT NULL,
	HIST_acti_flex_ext_pie_izquierda VARCHAR(50) NOT NULL,
	HIST_acti_flex_ext_pie_contractura VARCHAR(50) NOT NULL,

	HIST_pasi_cadera_ext_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_ext_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_ext_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_flex_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_flex_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_flex_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_add_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_add_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_add_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_abd_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_abd_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_abd_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_r_int_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_r_int_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_r_int_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_r_ext_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_r_ext_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_cadera_r_ext_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_rodilla_ext_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_rodilla_ext_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_rodilla_ext_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_rodilla_flex_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_rodilla_flex_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_rodilla_flex_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_dorsi_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_dorsi_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_dorsi_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_planta_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_planta_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_planta_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_inver_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_inver_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_inver_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_ever_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_ever_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_tobillo_ever_contractura VARCHAR(50) NOT NULL,
	HIST_pasi_flex_ext_pie_derecha VARCHAR(50) NOT NULL,
	HIST_pasi_flex_ext_pie_izquierda VARCHAR(50) NOT NULL,
	HIST_pasi_flex_ext_pie_contractura VARCHAR(50) NOT NULL
);

IF object_id('HISTORIAL_CLINICO_FUERZA_MUSCULAR_EXAMEN_FISICO') IS NOT NULL DROP TABLE HISTORIAL_CLINICO_FUERZA_MUSCULAR_EXAMEN_FISICO;
CREATE TABLE HISTORIAL_CLINICO_FUERZA_MUSCULAR_EXAMEN_FISICO(
	HIST_ID INT NOT NULL,
	HIST_fecha_registro DATE NOT NULL,
	HIST_registro INT NOT NULL,
	HIST_codigo INT NOT NULL,

	HIST_FMEX_ID INT IDENTITY(1,1),
	HIST_musculo_gluteo_mayor VARCHAR(50) NOT NULL,
	HIST_musculo_psoas VARCHAR(50) NOT NULL,
	HIST_musculo_aductor_medio_mayor_menor VARCHAR(50) NOT NULL,
	HIST_musculo_gluteo_medio VARCHAR(50) NOT NULL,
	HIST_musculo_gluteo_menor VARCHAR(50) NOT NULL,
	HIST_musculo_obturadores_geminos_piriforme VARCHAR(50) NOT NULL,
	HIST_musculo_cuadriceps VARCHAR(50) NOT NULL,
	HIST_musculo_isquitibiales VARCHAR(50) NOT NULL,
	HIST_musculo_tibial_anterior VARCHAR(50) NOT NULL,
	HIST_musculo_gemelos_soleo VARCHAR(50) NOT NULL,
	HIST_musculo_tibial_posterior_y_anterior VARCHAR(50) NOT NULL,
	HIST_musculo_peronero_lat_largo_y_corto VARCHAR(50) NOT NULL,
	HIST_musculo_flex_y_ext_largo_dedos VARCHAR(50) NOT NULL,
	HIST_propiocepcion VARCHAR(100) NOT NULL,
	HIST_tipo_pie_derecha VARCHAR(50) NOT NULL,
	HIST_tipo_pie_izquierda VARCHAR(50) NOT NULL,
	HIST_longitud_mmii_derecha VARCHAR(50) NOT NULL,
	HIST_longitud_mmii_izquierda VARCHAR(50) NOT NULL,
	HIST_longitud_mmii_diferente VARCHAR(50) NOT NULL,
	HIST_tacon_derecha VARCHAR(50) NOT NULL,
	HIST_tacon_izquierda VARCHAR(50) NOT NULL,
	HIST_tacon_efectivo VARCHAR(50) NOT NULL,
	HIST_tipo_calzado VARCHAR(50) NOT NULL,
	HIST_talla VARCHAR(50) NOT NULL,
	HIST_observaciones VARCHAR(150) NOT NULL
);

/*#################################################################################################*/
					/*CREANDO CONSTRAINT PK PARA LAS TABLAS DE LA BASE DE DATOS*/
/*#################################################################################################*/














/*#################################################################################################*/
					/*CREANDO CONSTRAINT PK PARA LAS TABLAS DE LA BASE DE DATOS*/
/*#################################################################################################*/
ALTER TABLE PROGRAMAR_CITA ADD CONSTRAINT FK_PROGRAMAR_CITA_PACI_NOMBRES FOREIGN KEY (PACI_NOMBRES) REFERENCES PACIENTE(PACI_NOMBRES)

/*#################################################################################################*/
					/*AGREGANDO REGISTROS A LA TABLAS DE LA BASE DE DATOS*/
/*#################################################################################################*/
INSERT INTO INSTRUCTOR (INST_nombres,INST_apellidos,INST_genero,INST_fecha_nacimiento,INST_telefono_principal,INST_telefono_movil,INST_direccion,INST_ciudad,INST_email,INST_password,INST_tarjeta_dni,INST_numero_dni,INST_cargo,INST_profesion,INST_rol,INST_estado,INST_fecha_registro)
VALUES
('ANDREA JOHANNA','ORDOÑEZ CARDENAS','Femenino','1994-12-03','6691924','3124146308','CRA 12BIS #74A-57 SUR','Bogota D.C.','andreahojan45@hotmail.com','1234','Cedula de Ciudadania','1033743843','Instructor','Ingeniero en protesis','Instructor','Activo','07/02/2018');

INSERT INTO PACIENTE (PACI_nombres,PACI_apellidos,PACI_genero,PACI_fecha_nacimiento,PACI_telefono_principal,PACI_telefono_movil,PACI_direccion,PACI_ciudad,PACI_email,PACI_tarjeta_dni,PACI_numero_dni,PACI_password,PACI_rol,PACI_estado,PACI_fecha_registro)
VALUES
('NELSON DAVID'   ,'RINCON CHOQUE'       ,'Masculino','1996-10-03','2516627','3007572717','CARRERA 88#73-46'                ,'Bogota D.C.','nelsondavid645@hotmail.com' ,'Cedula de Ciudadania','1014218465','1234','Paciente','Activo','2015-01-19'),
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

INSERT INTO HISTORIAL_CLINICO_DATOS_GENERALES_PACIENTE_ANAMNESIS (HIST_ID,HIST_fecha_registro,HIST_registro,HIST_codigo,PACI_nombres,PACI_apellidos,HIST_EPS,PACI_genero,HIST_EDAD,HIST_ESTATURA,HIST_PESO,HIST_ESTADO_CIVIL,PACI_telefono_principal,PACI_email,PACI_tarjeta_dni,PACI_numero_dni,PACI_telefono_movil,PACI_direccion,PACI_ciudad)
VALUES
('1','2015-04-03','001','756890','NELSON DAVID','RINCON CHOQUE','Saludcoop','Masculino','24','175 cm','68,78','Soltero','2516627','nelsondavid645@hotmail.com','Cedula de Ciudadania','1014218465','3007572717','CARRERA 88#73-46','Bogota D.C.'),
('2','2015-04-07','002','046773','EDWIN JAVIER','NIETO NAVARRO','Saludcoop','Masculino','20','170 cm','62,03','Casado','3646081','eedwinjavier687@hotmail.com','Cedula de Ciudadania','1109380848','3125051646','KRA 91 B PATIO BONITO LAS BRISAS','Bogota D.C.');

/*Generar automaticamente los 4 campos de la tabla registros historial clinico y alternarlas en cada tabla de historial clinico*/

INSERT INTO HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS (HIST_ID,HIST_fecha_registro,HIST_registro,HIST_codigo,HIST_persona_responsable,HIST_parentesco,HIST_paren_tarjeta_dni,HIST_paren_numero_dni,HIST_paren_direccion,HIST_paren_telefono_principal,HIST_paren_telefono_movil,HIST_paren_ciudad)
VALUES
('1','2015-04-03','001','756890','MIGUEL ANGEL ALARCON','Hermano','C.C.','1030639384','CARRERA 88#73-46','3001454198','6547845','Cartagena'),
('2','2015-04-07','002','046773','JOHAN CAMILO VARCGAS','Primo','C.C.','1031140640','KRA 91 B PATIO BONITO LAS BRISAS','3068745840','3647450','Cali');

/*#################################################################################################*/
					/*EJERCICIOS SQL SERVER - PRUEBA DE CONOCIMIENTOS SQL SERVER*/
/*#################################################################################################*/
SELECT * FROM INSTRUCTOR INNER JOIN PACIENTE ON INSTRUCTOR.INST_ID = PACIENTE.PACI_ID
SELECT * FROM INSTRUCTOR LEFT JOIN PACIENTE ON INSTRUCTOR.INST_ID = PACIENTE.PACI_ID
SELECT * FROM INSTRUCTOR RIGHT JOIN PACIENTE ON INSTRUCTOR.INST_ID = PACIENTE.PACI_ID
SELECT * FROM INSTRUCTOR CROSS JOIN PACIENTE

/*#################################################################################################*/
					/*EJERCICIOS SQL SERVER - PRUEBA DE CONOCIMIENTOS SQL SERVER*/
/*#################################################################################################*/
SELECT INST_TARJETA_DNI,INST_NOMBRES,INST_APELLIDOS, count(*) AS CNT FROM INSTRUCTOR
WHERE INST_TARJETA_DNI<>'Cedula de Ciudadania' OR INST_TARJETA_DNI<>'Tarjeta de Identidad'
GROUP BY INST_TARJETA_DNI,INST_NOMBRES,INST_APELLIDOS
HAVING INST_TARJETA_DNI<>'Tarjeta de Identidad'
ORDER BY INST_NOMBRES ASC;

SELECT PACI_TARJETA_DNI,PACI_NOMBRES,PACI_APELLIDOS, count(*) AS CNT FROM PACIENTE
WHERE PACI_TARJETA_DNI<>'Cedula de Ciudadania' OR PACI_TARJETA_DNI<>'Tarjeta de Identidad'
GROUP BY PACI_TARJETA_DNI,PACI_NOMBRES,PACI_APELLIDOS
HAVING PACI_TARJETA_DNI<>'Cedula de Ciudadania'
ORDER BY PACI_NOMBRES ASC;

SELECT INST_tarjeta_dni,INST_numero_dni,INST_nombres,PACI_tarjeta_dni,PACI_numero_dni,PACI_nombres FROM INSTRUCTOR INNER JOIN PACIENTE ON INSTRUCTOR.INST_ID = PACIENTE.PACI_ID
WHERE INST_tarjeta_dni<>'Cedula de Ciudadania' OR INST_tarjeta_dni<>'Tarjeta de Identidad' AND PACI_tarjeta_dni<>'Cedula de Ciudadania' OR PACI_tarjeta_dni<>'Tarjeta de Identidad'
GROUP BY INST_tarjeta_dni,INST_numero_dni,INST_nombres,PACI_tarjeta_dni,PACI_numero_dni,PACI_nombres
HAVING INST_tarjeta_dni<>'Cedula de Ciudadania' OR INST_tarjeta_dni<>'Tarjeta de Identidad' AND PACI_tarjeta_dni<>'Cedula de Ciudadania' OR PACI_tarjeta_dni<>'Tarjeta de Identidad'
ORDER BY PACI_NUMERO_DNI ASC;

/*#################################################################################################*/
					/*INDICES CLUSTERED*/
/*#################################################################################################*/

CREATE UNIQUE CLUSTERED INDEX INDICE_PACI_ID ON PACIENTE(PACI_ID);
INSERT INTO PACIENTE (PACI_nombres,PACI_apellidos,PACI_genero,PACI_fecha_nacimiento,PACI_telefono_principal,PACI_telefono_movil,PACI_direccion,PACI_ciudad,PACI_email,PACI_tarjeta_dni,PACI_numero_dni,PACI_password,PACI_rol,PACI_estado,PACI_fecha_registro)
VALUES ('LUIS FELIPE','LAGUNA MORENO','Masculino','1996-01-24','4825488','3115393496','CLL 2  91 11','Bogota D.C.','luisfelp7@hotmail.com','Cedula de Ciudadania','1015397752','1234','Paciente','Activo','2015-02-18');

CREATE NONCLUSTERED INDEX INDICE_PACI_nombres ON PACIENTE(PACI_nombres);

IF EXISTS (SELECT * FROM SYSINDEXES WHERE name = 'INDICE_PACI_ID')
DROP INDEX PACIENTE.INDICE_PACI_ID;

SELECT * FROM SYSINDEXES WHERE id = object_id('PACIENTE')

SELECT * FROM PACIENTE SYSINDEXES


/*INSERTAR IMAGENES EN SQLSERVER UTILIZANDO EL INSERT*/

IF object_id ('IMAGENES') IS NOT NULL DROP TABLE IMAGENES;
CREATE TABLE IMAGENES(
	IMAGE_ID INT IDENTITY(1,1),

	IMAGE_Subiendo VARBINARY(MAX)
);

INSERT INTO IMAGENES(IMAGE_Subiendo)
SELECT * FROM OPENROWSET(BULK N'C:\SQL_Server\DSC_0268.jpg', SINGLE_BLOB) AS T1
INSERT INTO IMAGENES(IMAGE_Subiendo)
SELECT * FROM OPENROWSET(BULK N'C:\SQL_Server\DSC_0269.jpg', SINGLE_BLOB) AS T1
INSERT INTO IMAGENES(IMAGE_Subiendo)
SELECT * FROM OPENROWSET(BULK N'C:\SQL_Server\DSC_0270.jpg', SINGLE_BLOB) AS T1
INSERT INTO IMAGENES(IMAGE_Subiendo)
SELECT * FROM OPENROWSET(BULK N'C:\SQL_Server\DSC_0271.jpg', SINGLE_BLOB) AS T1
INSERT INTO IMAGENES(IMAGE_Subiendo)
SELECT * FROM OPENROWSET(BULK N'C:\SQL_Server\DSC_0272.jpg', SINGLE_BLOB) AS T1

INSERT INTO IMAGENES(IMAGE_Subiendo)
SELECT * FROM OPENROWSET(BULK N'C:\SQL_Server\DSC_0269.jpg', SINGLE_BLOB) AS Imagen

DECLARE @fichero NVARCHAR(250) SET @fichero = N'C:\SQL_Server\DSC_0268.jpg'
EXECUTE ('SELECT * FROM OpenRowSet( Bulk N''' + @fichero + ''', Single_Blob) AS Imagen');

BULK INSERT Pruebas..tbl_imagenes FROM 'C:\SQL_Server\DSC_0268.bin' WITH (FORMATFILE='D:\temp\bcp.fmt');

BULK INSERT IMAGENES FROM 'C:\SQL_Server\DSC_0272.jpg' WITH (formatfile='c:\upload\bcp.fmt');

/*#################################################################################################*/
					/*PROCEDIMIENTOS*/
/*#################################################################################################*/

/*PROCEDIMIENTO INSERTAR*/
GO
CREATE PROCEDURE SpPACIENTEInsertar
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
INSERT INTO PACIENTE (PACI_nombres,PACI_apellidos,PACI_genero,PACI_fecha_nacimiento,PACI_telefono_principal,PACI_telefono_movil,PACI_direccion,PACI_ciudad,PACI_email,PACI_tarjeta_dni,PACI_numero_dni,PACI_password,PACI_rol,PACI_estado,PACI_fecha_registro)
VALUES (@PACI_nombres,@PACI_apellidos,@PACI_genero,@PACI_fecha_nacimiento,@PACI_telefono_principal,@PACI_telefono_movil,@PACI_direccion,@PACI_ciudad,@PACI_email,@PACI_tarjeta_dni,@PACI_numero_dni,@PACI_password,@PACI_rol,@PACI_estado,@PACI_fecha_registro)
END
/*PROCEDIMIENTO A EJECUTAR*/
EXECUTE SpPACIENTEInsertar 'EDWIN JAVIER','NIETO NAVARRO','Masculino','1997-09-04','3646081','3125051646','KRA 91 B PATIO BONITO LAS BRISAS','Bogota D.C.','eedwinjavier687@hotmail.com','Cedula de Ciudadania','1109380848','1234','Paciente','Activo','2015-01-19';
/*PROCEDIMIENTO BORRAR*/
DROP PROCEDURE SpPACIENTEInsertar
GO

/*PROCEDIMIENTO ACTUALIZAR*/
GO
CREATE PROCEDURE SpPACIENTEActualizar
@PACI_ID AS INT,
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
UPDATE PACIENTE
SET PACI_nombres = @PACI_nombres,
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
WHERE PACI_ID = @PACI_ID
END
/*PROCEDIMIENTO A EJECUTAR*/
EXECUTE SpPACIENTEActualizar '1','MAICOL DARIO','NIETO NAVARRO','Masculino','1997-09-04','3646081','3125051646','KRA 91 B PATIO BONITO LAS BRISAS','Bogota D.C.','eedwinjavier687@hotmail.com','C.C.','1109380848','1234','Paciente','Activo','2015-01-19';
/*PROCEDIMIENTO BORRAR*/
DROP PROCEDURE SpPACIENTEActualizar
GO

/*PROCEDIMIENTO ELIMINAR*/
GO
CREATE PROCEDURE SpPACIENTEEliminar
@PACI_ID AS INT
AS
BEGIN
DELETE FROM PACIENTE
WHERE PACI_ID = @PACI_ID
END
/*PROCEDIMIENTO A EJECUTAR*/
EXECUTE SpPACIENTEEliminar '1';
/*PROCEDIMIENTO BORRAR*/
DROP PROCEDURE SpPACIENTEEliminar
GO

/*PROCEDIMIENTO LISTAR*/
GO
CREATE PROCEDURE SpPACIENTEListar
AS
BEGIN
SELECT PACI_ID,
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
FROM PACIENTE
END
/*PROCEDIMIENTO A EJECUTAR*/
EXECUTE SpPACIENTEListar
/*PROCEDIMIENTO BORRAR*/
DROP PROCEDURE SpPACIENTEListar
GO

/*PROCEDIMIENTO OBTENER*/
GO
CREATE PROCEDURE SpPACIENTEObtener
@PACI_ID AS INT
AS
BEGIN
SELECT TOP 1 
PACI_ID,
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
FROM PACIENTE
WHERE PACI_ID = @PACI_ID
END
/*PROCEDIMIENTO A EJECUTAR*/
EXECUTE SpPACIENTEObtener '1'
/*PROCEDIMIENTO BORRAR*/
DROP PROCEDURE SpPACIENTEObtener
GO

/*PROCEDIMIENTO ANTERIOR*/
GO
CREATE PROCEDURE SpPACIENTEAnterior
@PACI_ID AS INT
AS
IF(SELECT COUNT(PACI_ID) FROM PACIENTE WHERE PACI_ID < @PACI_ID) > 0
BEGIN
SELECT TOP 1 
PACI_ID,
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
FROM PACIENTE
WHERE PACI_ID < @PACI_ID
ORDER BY  PACI_ID DESC
END
ELSE
BEGIN
SELECT TOP 1 
PACI_ID,
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
FROM PACIENTE
ORDER BY  PACI_ID ASC
END
/*PROCEDIMIENTO A EJECUTAR*/
EXECUTE SpPACIENTEAnterior '3'
/*PROCEDIMIENTO BORRAR*/
DROP PROCEDURE SpPACIENTEAnterior
GO


/*ESTRUCTURAS DE CONTROL*/
DECLARE
	@PACI_numero_dni VARCHAR(30)='1014218465'
IF EXISTS(SELECT * FROM PACIENTE WHERE PACI_numero_dni=@PACI_numero_dni)
	BEGIN
		PRINT 'Numero de identidad registrado anteriormente'
	END
ELSE
	BEGIN
		INSERT INTO PACIENTE (PACI_numero_dni)
		VALUES (@PACI_numero_dni)
		PRINT 'Nuevo numero de indentidad registrado'
	END
GO

--
DECLARE
	@PACI_email VARCHAR(30)='1014218465'
SET @PACI_email='nelsondavid645@hotmail.com'
IF @PACI_email='nelsondavid645@hotmail.com'
	BEGIN
	PRINT 'Bievenido Usuario'
	END
ELSE
	BEGIN
	PRINT 'USUARIO NO RECONOCIDO'
	END


/*INDICES*/
EXECUTE sp_helpindex 'PACIENTE'

CREATE CLUSTERED INDEX IDX_PACI_nombres
ON PACIENTE (PACI_nombres)

SELECT * FROM PACIENTE

CREATE NONCLUSTERED INDEX IDX_PACI_apellidos
ON PACIENTE (PACI_apellidos)

SELECT PACI_nombres,PACI_apellidos FROM PACIENTE

GO
CREATE TRIGGER TR_PACIENTE
ON PACIENTE
AFTER UPDATE
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO PACIENTE (PACI_nombres,PACI_apellidos,PACI_genero,PACI_fecha_nacimiento,PACI_telefono_principal,PACI_telefono_movil,PACI_direccion,PACI_ciudad,PACI_email,PACI_tarjeta_dni,PACI_numero_dni,PACI_password,PACI_rol,PACI_estado,PACI_fecha_registro)
SELECT PACI_nombres,PACI_apellidos,PACI_genero,PACI_fecha_nacimiento,PACI_telefono_principal,PACI_telefono_movil,PACI_direccion,PACI_ciudad,PACI_email,PACI_tarjeta_dni,PACI_numero_dni,PACI_password,PACI_rol,PACI_estado,PACI_fecha_registro
FROM INSERTED
END


DROP TRIGGER TR_HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS
GO
CREATE TRIGGER TR_HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS
ON HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS
AFTER UPDATE
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS (HIST_ID,HIST_fecha_registro,HIST_registro,HIST_codigo,HIST_persona_responsable,HIST_parentesco,HIST_paren_tarjeta_dni,HIST_paren_numero_dni,HIST_paren_direccion,HIST_paren_telefono_principal,HIST_paren_telefono_movil,HIST_paren_ciudad)
SELECT HIST_ID,HIST_fecha_registro,HIST_registro,HIST_codigo,HIST_persona_responsable,HIST_parentesco,HIST_paren_tarjeta_dni,HIST_paren_numero_dni,HIST_paren_direccion,HIST_paren_telefono_principal,HIST_paren_telefono_movil,HIST_paren_ciudad
--SELECT '1','2015-04-03','001','756890','MIGUEL ANGEL ALARCON','Hermano','C.C.','1030639384','CARRERA 88#73-46','3001454198','6547845','Cartagena'
FROM INSERTED
END
SELECT * FROM HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS;

UPDATE HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS
SET
HIST_ID = '1',
HIST_fecha_registro = '2015-04-03',
HIST_registro = '001',
HIST_codigo = '756890',
HIST_persona_responsable = 'ADDISON JESUS JIMENEZ BELTRAN',
HIST_parentesco = 'Hermano',
HIST_paren_tarjeta_dni = 'C.C.',
 HIST_paren_numero_dni = '1030639384',
HIST_paren_direccion = 'CARRERA 88#73-46',
HIST_paren_telefono_principal = '3001454198',
HIST_paren_telefono_movil = '6547845',
HIST_paren_ciudad = 'Bogota D.C.'
WHERE HIST_PREA_ID = '1';

SELECT * FROM HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS;
TRUNCATE TABLE HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS;


UPDATE HISTORIAL_CLINICO_PERSONA_RESPONSABLE_ANAMNESIS
SET
HIST_ID = '2',
HIST_fecha_registro = '2015-04-07',
HIST_registro = '002',
HIST_codigo = '46773',
HIST_persona_responsable = 'JOHAN CAMILO VARCGAS',
HIST_parentesco = 'Primo',
HIST_paren_tarjeta_dni = 'C.C.',
 HIST_paren_numero_dni = '1030639384',
HIST_paren_direccion = 'KRA 91 B PATIO BONITO LAS BRISAS',
HIST_paren_telefono_principal = '3068745840',
HIST_paren_telefono_movil = '3647450',
HIST_paren_ciudad = 'Cali'
WHERE HIST_PREA_ID = '2';
