USE ProtesisOrtesis;
GO

IF object_id('HC_Chekeco_Diagnostico') IS NOT NULL DROP TABLE HC_Chekeco_Diagnostico;
CREATE TABLE HC_Chekeco_Diagnostico(
	HC_ID INT NOT NULL,
	HC_fecha_registro DATE NOT NULL,
	HC_registro INT NOT NULL,
	HC_codigo INT NOT NULL,

	CD_ID INT IDENTITY(1,1),
	
	CD_principal_patologia VARCHAR(50) NOT NULL,
	CD_zona_afectadas VARCHAR(50) NOT NULL,
	CD_diagnostico_o_evolucion_enfermedad VARCHAR(200) NOT NULL,
	CD_dolor_especifico VARCHAR(50) NOT NULL,
	CD_tipo_dolor_especifico VARCHAR(50) NOT NULL,
	CD_valor VARCHAR(50) NOT NULL,
	CD_tiempo VARCHAR(50) NOT NULL,
	CD_sensibilidad VARCHAR(50) NOT NULL,
	CD_desc VARCHAR(50) NOT NULL,
	CD_zonas_sensibles VARCHAR(50) NOT NULL,
	CD_zonas_maltratadas VARCHAR(50) NOT NULL,
	CD_tipo_zonas_maltratadas VARCHAR(50) NOT NULL,
	CD_sicatrizacion VARCHAR(50) NOT NULL,
	CD_condcion_piel VARCHAR(50) NOT NULL,
	CD_areas_anormales VARCHAR(50) NOT NULL,
	CD_atrofia_volumen VARCHAR(50) NOT NULL,
	CD_contracturas VARCHAR(50) NOT NULL,
	CD_diagnostico_aritculaciones_derecha VARCHAR(50) NOT NULL,
	CD_diagnostico_aritculaciones_izquierda VARCHAR(50) NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE HC_Chekeco_Diagnostico
ADD CONSTRAINT PK_HC_Chekeco_Diagnostico
PRIMARY KEY (CD_ID);
