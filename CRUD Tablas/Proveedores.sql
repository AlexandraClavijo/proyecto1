USE ProtesisOrtesis;
GO

IF object_id('Proveedores') IS NOT NULL DROP TABLE Proveedores;
CREATE TABLE Proveedores(
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

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE Proveedores
ADD CONSTRAINT PK_Proveedores
PRIMARY KEY (PROV_ID);