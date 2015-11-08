USE ProtesisOrtesis;
GO

IF object_id('HC_Entorno_Social_Diagnostico') IS NOT NULL DROP TABLE HC_Entorno_Social_Diagnostico;
CREATE TABLE HC_Entorno_Social_Diagnostico(
	HC_ID INT NOT NULL,
	HC_fecha_registro DATE NOT NULL,
	HC_registro INT NOT NULL,
	HC_codigo INT NOT NULL,

	ESD_ID INT IDENTITY(1,1),

	ESD_tipo_vivienda VARCHAR(50) NOT NULL,
	ESD_numero_pisos INT NOT NULL,
	ESD_cond_vivienda VARCHAR(50) NOT NULL,
	ESD_tipo_terreno VARCHAR(50) NOT NULL,
	ESD_zona_vivienda VARCHAR(50) NOT NULL,
	ESD_espacios_acseso VARCHAR(50) NOT NULL,
	ESD_personas_que_vive VARCHAR(50) NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE HC_Entorno_Social_Diagnostico
ADD CONSTRAINT PK_HC_Entorno_Social_Diagnostico
PRIMARY KEY (ESD_ID);
