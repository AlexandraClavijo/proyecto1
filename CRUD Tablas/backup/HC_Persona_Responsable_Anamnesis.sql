USE ProtesisOrtesis;
GO

IF object_id('HC_Persona_Responsable_Anamnesis') IS NOT NULL DROP TABLE HC_Persona_Responsable_Anamnesis;
CREATE TABLE HC_Persona_Responsable_Anamnesis(
	HC_ID INT NOT NULL,
	HC_fecha_registro DATE NOT NULL,
	HC_registro INT NOT NULL,
	HC_codigo INT NOT NULL,

	PRA_ID int IDENTITY(1,1) NOT NULL,

	PRA_persona_responsable VARCHAR(40) NOT NULL,
	PRA_parentesco VARCHAR(40) NOT NULL,
	PRA_paren_tarjeta_dni VARCHAR(50) NOT NULL,
	PRA_paren_numero_dni VARCHAR(30) NOT NULL,
	PRA_paren_direccion VARCHAR(100) NOT NULL,
	PRA_paren_telefono_principal VARCHAR(30) NOT NULL,
	PRA_paren_telefono_movil VARCHAR(30) NOT NULL,
	PRA_paren_ciudad VARCHAR(30) NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE HC_Persona_Responsable_Anamnesis
ADD CONSTRAINT PK_HC_Persona_Responsable_Anamnesis
PRIMARY KEY (PRA_ID);
