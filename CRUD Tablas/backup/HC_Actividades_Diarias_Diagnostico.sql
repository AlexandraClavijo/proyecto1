USE ProtesisOrtesis;
GO

IF object_id('HC_Actividades_Diarias_Diagnostico') IS NOT NULL DROP TABLE HC_Actividades_Diarias_Diagnostico;
CREATE TABLE HC_Actividades_Diarias_Diagnostico(
	HC_ID INT NOT NULL,
	HC_fecha_registro DATE NOT NULL,
	HC_registro INT NOT NULL,
	HC_codigo INT NOT NULL,

	ADD_ID INT IDENTITY(1,1),

	ADD_upcacion VARCHAR(50) NOT NULL,
	ADD_actividades_diarias VARCHAR(50) NOT NULL,
	ADD_escaleras_ramplas VARCHAR(50) NOT NULL,
	ADD_max_distancia_caminando VARCHAR(50) NOT NULL,
	ADD_tiempo_maxX_caminar VARCHAR(50) NOT NULL,
	ADD_medios_transportes VARCHAR(50) NOT NULL,
	ADD_ayudas_tecnicas VARCHAR(50) NOT NULL,
	ADD_ayuda_personal_cuidador VARCHAR(50) NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE HC_Actividades_Diarias_Diagnostico
ADD CONSTRAINT PK_HC_Actividades_Diarias_Diagnostico
PRIMARY KEY (ADD_ID);
