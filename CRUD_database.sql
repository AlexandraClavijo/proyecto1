IF EXISTS(SELECT * FROM DBO.SYSDATABASES WHERE NAME = 'ProtesisOrtesis')
	BEGIN
		USE master;
	DROP DATABASE ProtesisOrtesis;
	CREATE DATABASE ProtesisOrtesis;
	USE ProtesisOrtesis;
END;
ELSE
	BEGIN
	CREATE DATABASE ProtesisOrtesis;
	USE ProtesisOrtesis;
END;