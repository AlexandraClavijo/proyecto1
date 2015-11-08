USE [ProtesisOrtesis]
GO

-- ==========================================================================================
-- Titule:		<CREATE TABLE: Historial_Movimientos_Registros>
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Description:	<Con el fin de saber la cantidad de registros guardados, actualizados y
--				<eliminados de cada uno de los movimientos de las tablas afectadas
--				<anteriormente

-- Create date: <13/09/2015>
-- Description:	<Se creo una nueva tabla>

-- Update date: <14/09/2015>
-- Description:	<Se elimino un campo no necesario para la tabla>
-- ==========================================================================================
IF object_id('[dbo].[Historial_Movimientos_Registros]') IS NOT NULL DROP TABLE [dbo].[Historial_Movimientos_Registros];
CREATE TABLE [dbo].[Historial_Movimientos_Registros](
	HMR_COD_REG INT IDENTITY(1,1) NOT NULL,
	HMR_description VARCHAR(100),
	HMR_date_registered DATE,
	HMR_date_update DATE,
	HMR_date_delete DATE
);

-- ==========================================================================================
-- Titule:		<ALTER TABLE: PRIMARY KEY>
-- Author:		<Grupo ADSI/2014-2016/750566>
-- Create date: <12/09/2015>
-- Description:	<Se creo una alternacion para la tabla con primary key>

-- Update date: <14/09/2015>
-- Description:	<Se actualizo el campo que tendra llave primaria>
-- ==========================================================================================
ALTER TABLE [dbo].[Historial_Movimientos_Registros]
ADD CONSTRAINT PK_HC_Historial_Movimientos_Registros
PRIMARY KEY (HMR_COD_REG);
