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

ALTER TABLE HISTORIAL_CLINICO_FUERZA_MUSCULAR_EXAMEN_FISICO ADD CONSTRAINT PK_HISTORIAL_CLINICO_FUERZA_MUSCULAR_EXAMEN_FISICO PRIMARY KEY (HIST_FMEX_ID);
