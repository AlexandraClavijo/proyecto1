USE ProtesisOrtesis;
GO

IF object_id('HC_Estado_General_Salud_Anamnesis') IS NOT NULL DROP TABLE HC_Estado_General_Salud_Anamnesis;
CREATE TABLE HC_Estado_General_Salud_Anamnesis(
	HC_ID INT NOT NULL,
	HC_fecha_registro DATE NOT NULL,
	HC_registro INT NOT NULL,
	HC_codigo INT NOT NULL,

	EGSA_ID INT IDENTITY(1,1),
	
	EGSA_problemas_cardiovasculares VARCHAR(50) NOT NULL,
	EGSA_problemas_circulatorios VARCHAR(50) NOT NULL,
	EGSA_diabetes VARCHAR(50) NOT NULL,
	EGSA_neuropatia_sistema_nervioso VARCHAR(50) NOT NULL,
	EGSA_alergias VARCHAR(50) NOT NULL,
	EGSA_coordinacion_equilibrio_mareo VARCHAR(50) NOT NULL,
	EGSA_infecciones VARCHAR(50) NOT NULL,
	EGSA_toma_medicamentos VARCHAR(50) NOT NULL,
	EGSA_efectos_medicacion VARCHAR(50) NOT NULL,
	EGSA_medicamentos_dosis VARCHAR(50) NOT NULL,
	EGSA_otros_sintomas VARCHAR(50) NOT NULL,
	EGSA_otras_enfermedades VARCHAR(50) NOT NULL,
	EGSA_dolores VARCHAR(50) NOT NULL,
	EGSA_otras_limitaciones VARCHAR(50) NOT NULL,
	EGSA_atencedentes_personales VARCHAR(50) NOT NULL,
	EGSA_antecedentes_familiares VARCHAR(50) NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE HC_Estado_General_Salud_Anamnesis
ADD CONSTRAINT PK_HC_Estado_General_Salud_Anamnesis
PRIMARY KEY (EGSA_ID);
