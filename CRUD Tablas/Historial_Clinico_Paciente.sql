USE [ProtesisOrtesis]
GO

-- ==================================== ==================================== ==================================== ====================================
-- Titule:		<CREATE TABLE: Historial Clinico Paciente>
-- Author:		<Addison Jimenez/2014-2016/750566>
-- Create date: <05/10/2015>
-- Description:	<Falta arreglar dos tablas y agregar sus nuevos campos a la nueva tabla>

-- Update date: <dd/mm/aaaa>
-- Description:	<Update: Ninguno>
-- ==================================== ==================================== ==================================== ====================================
IF object_id('[dbo].[Historial_Clinico_Paciente]')
	IS NOT NULL DROP TABLE [dbo].[Historial_Clinico_Paciente];
CREATE TABLE [dbo].[Historial_Clinico_Paciente](
	HC_ID INT,
	HC_fecha_registro DATE,
	HC_registro INT,
	HC_codigo INT,

	PACI_nombres VARCHAR(40),
	PACI_apellidos VARCHAR(40),
	DGPA_eps VARCHAR(30),
	PACI_genero VARCHAR(30),
	DGPA_edad INT,
	DGPA_estatura VARCHAR(10),
	DGPA_peso VARCHAR(10),
	DGPA_estado_civil VARCHAR(30),
	PACI_telefono_principal VARCHAR(30),
	PACI_email VARCHAR(50),
	PACI_tarjeta_dni VARCHAR(30),
	PACI_numero_dni VARCHAR(30) NOT NULL,
	PACI_telefono_movil VARCHAR(30),
	PACI_direccion VARCHAR(100),
	PACI_ciudad VARCHAR(30),

	PRA_persona_responsable VARCHAR(40),
	PRA_parentesco VARCHAR(40),
	PRA_paren_tarjeta_dni VARCHAR(50),
	PRA_paren_numero_dni VARCHAR(30),
	PRA_paren_direccion VARCHAR(100),
	PRA_paren_telefono_principal VARCHAR(30),
	PRA_paren_telefono_movil VARCHAR(30),
	PRA_paren_ciudad VARCHAR(30),

	EGSA_problemas_cardiovasculares VARCHAR(50),
	EGSA_problemas_circulatorios VARCHAR(50),
	EGSA_diabetes VARCHAR(50),
	EGSA_neuropatia_sistema_nervioso VARCHAR(50),
	EGSA_alergias VARCHAR(50),
	EGSA_coordinacion_equilibrio_mareo VARCHAR(50),
	EGSA_infecciones VARCHAR(50),
	EGSA_toma_medicamentos VARCHAR(50),
	EGSA_efectos_medicacion VARCHAR(50),
	EGSA_medicamentos_dosis VARCHAR(50),
	EGSA_otros_sintomas VARCHAR(50),
	EGSA_otras_enfermedades VARCHAR(50),
	EGSA_dolores VARCHAR(50),
	EGSA_otras_limitaciones VARCHAR(50),
	EGSA_atencedentes_personales VARCHAR(50),
	EGSA_antecedentes_familiares VARCHAR(50),

	ESD_tipo_vivienda VARCHAR(50),
	ESD_numero_pisos INT,
	ESD_cond_vivienda VARCHAR(50),
	ESD_tipo_terreno VARCHAR(50),
	ESD_zona_vivienda VARCHAR(50),
	ESD_espacios_acseso VARCHAR(50),
	ESD_personas_que_vive VARCHAR(50),

	ADD_upcacion VARCHAR(50),
	ADD_actividades_diarias VARCHAR(50),
	ADD_escaleras_ramplas VARCHAR(50),
	ADD_max_distancia_caminando VARCHAR(50),
	ADD_tiempo_maxX_caminar VARCHAR(50),
	ADD_medios_transportes VARCHAR(50),
	ADD_ayudas_tecnicas VARCHAR(50),
	ADD_ayuda_personal_cuidador VARCHAR(50),

	CD_principal_patologia VARCHAR(50),
	CD_zona_afectadas VARCHAR(50),
	CD_diagnostico_o_evolucion_enfermedad VARCHAR(200),
	CD_dolor_especifico VARCHAR(50),
	CD_tipo_dolor_especifico VARCHAR(50),
	CD_valor VARCHAR(50),
	CD_tiempo VARCHAR(50),
	CD_sensibilidad VARCHAR(50),
	CD_desc VARCHAR(50),
	CD_zonas_sensibles VARCHAR(50),
	CD_zonas_maltratadas VARCHAR(50),
	CD_tipo_zonas_maltratadas VARCHAR(50),
	CD_sicatrizacion VARCHAR(50),
	CD_condcion_piel VARCHAR(50),
	CD_areas_anormales VARCHAR(50),
	CD_atrofia_volumen VARCHAR(50),
	CD_contracturas VARCHAR(50),
	CD_diagnostico_aritculaciones_derecha VARCHAR(50),
	CD_diagnostico_aritculaciones_izquierda VARCHAR(50)
);

-- ==========================================================================================
-- Titule:		<ALTER TABLE: PRIMARY KEY>
-- Author:		<Addison Jimenez/2014-2016/750566>
-- Create date: <05/10/2015>
-- Description:	<Creando alternacion de tabla con llave primaria>

-- Update date: <dd/mm/aaaa>
-- Description:	<Sin Documentar>
-- ==========================================================================================
ALTER TABLE [dbo].[Historial_Clinico_Paciente]
ADD CONSTRAINT PK_Historial_Clinico_Paciente_PACI_numero_dni
PRIMARY KEY (PACI_numero_dni);

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <dd/mm/aaaa>
-- Titule:		<ALTER TABLE: FOREIGN KEY>
-- Description:	<Sin Documentar>
-- ==========================================================================================
/*ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
FOREIGN KEY (PACI_numero_dni) REFERENCES Pacientes (PACI_numero_dni)
	ON UPDATE CASCADE
	ON DELETE CASCADE;*/

/*ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_apellidos
FOREIGN KEY (PACI_apellidos) REFERENCES Pacientes (PACI_apellidos)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_genero
FOREIGN KEY (PACI_genero) REFERENCES Pacientes (PACI_genero)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_principal
FOREIGN KEY (PACI_telefono_principal) REFERENCES Pacientes (PACI_telefono_principal)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_email
FOREIGN KEY (PACI_email) REFERENCES Pacientes (PACI_email)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_tarjeta_dni
FOREIGN KEY (PACI_tarjeta_dni) REFERENCES Pacientes (PACI_tarjeta_dni)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
FOREIGN KEY (PACI_numero_dni) REFERENCES Pacientes (PACI_numero_dni)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_movil
FOREIGN KEY (PACI_telefono_movil) REFERENCES Pacientes (PACI_telefono_movil)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_direccion
FOREIGN KEY (PACI_direccion) REFERENCES Pacientes (PACI_direccion)
	ON UPDATE CASCADE
	ON DELETE CASCADE;

ALTER TABLE HC.Datos_Generales_Paciente_Anamnesis
ADD CONSTRAINT FK_HC_Datos_Generales_Paciente_Anamnesis_PACI_ciudad
FOREIGN KEY (PACI_ciudad) REFERENCES Pacientes (PACI_ciudad)
	ON UPDATE CASCADE
	ON DELETE CASCADE;*/

-- ==========================================================================================
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Update date: <13/09/2015>
-- Titule:		<ALTER TABLE: UNIQUE>
-- Description:	<Sin Documentar>
-- ==========================================================================================
--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_nombres
--UNIQUE (PACI_nombres);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_apellidos
--UNIQUE (PACI_apellidos);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_genero
--UNIQUE (PACI_genero);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_principal
--UNIQUE (PACI_telefono_principal);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_telefono_movil
--UNIQUE (PACI_telefono_movil);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_direccion
--UNIQUE (PACI_direccion);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_ciudad
--UNIQUE (PACI_ciudad);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_email
--UNIQUE (PACI_email);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_tarjeta_dni
--UNIQUE (PACI_tarjeta_dni);

--ALTER TABLE HC_Datos_Generales_Paciente_Anamnesis
--ADD CONSTRAINT UK_HC_Datos_Generales_Paciente_Anamnesis_PACI_numero_dni
--UNIQUE (PACI_numero_dni);
