USE ProtesisOrtesis;
GO

IF object_id('Productos') IS NOT NULL DROP TABLE Productos;
CREATE TABLE Productos(
	PROD_ID INT IDENTITY(1,1) NOT NULL,
	PROD_nombre VARCHAR(50) NOT NULL,
	PROD_tipo VARCHAR(50) NOT NULL,
	PROD_descripcion VARCHAR(150) NOT NULL,
	PROD_cantidad INT NOT NULL,
	PROD_fecha_registro DATE NOT NULL
);

/*####################################################################################################*/
/*####################################################################################################*/

ALTER TABLE Productos
ADD CONSTRAINT PK_Productos
PRIMARY KEY (PROD_ID);
