USE master
GO

CREATE DATABASE DB_EventosDeportivos;
GO

/*Drop Database
DROP DATABASE DB_EventosDeportivos;
GO
*/



--ESDRA TEST
USE DB_EventosDeportivos;
GO

CREATE TABLE tbUsuarios(
	Usua_Id				INT IDENTITY(1,1),
	Usua_Usuario		NVARCHAR(100) NOT NULL,
	Usua_Nombre			NVARCHAR(200) NOT NULL,
	Usua_Clave			NVARCHAR(MAX) NOT NULL,
	Usua_UsuarioCrea	INT NOT NULL,
	Usua_FechaCrea		DATETIME NOT NULL,
	Usua_UsuarioModif	INT,
	Usua_FechaModif		DATETIME,
	Usua_EsAdmin		BIT	NOT NULL,
	Usua_Estado			BIT	NOT NULL,
	CONSTRAINT PK_dbo_tbUsuarios_Usua_Id PRIMARY KEY (Usua_Id),
	CONSTRAINT UQ_dbo_tbUsuarios_Usua_Usuario UNIQUE(Usua_Usuario)
);
GO

CREATE TABLE tbDepartamentos(
	Dept_Id				VARCHAR(2),
	Dept_Departamento	NVARCHAR(200) NOT NULL,
	Dept_UsuarioCrea	INT NOT NULL,
	Dept_FechaCrea		DATETIME NOT NULL,
	Dept_UsuarioModif	INT,
	Dept_FechaModif		DATETIME,
	CONSTRAINT PK_dbo_tbDepartamentos_Dept_Id PRIMARY KEY (Dept_Id)
);
GO

CREATE TABLE tbMunicipios(
	Muni_Id				VARCHAR(4) NOT NULL,
	Dept_Id				VARCHAR(2) NOT NULL,
	Muni_Municipio		NVARCHAR(100) NOT NULL,
	Muni_UsuarioCrea	INT NOT NULL,
	Muni_FechaCrea		DATETIME NOT NULL,
	Muni_UsuarioModif	INT,
	Muni_FechaModif		DATETIME,
	CONSTRAINT PK_dbo_tbMunicipios_Muni_Id PRIMARY KEY(Muni_Id),
	CONSTRAINT FK_dbo_tbMunicipios_Dept_Id_dbo_tbDepartamentos_Dept_Id FOREIGN KEY (Dept_Id) REFERENCES [dbo].[tbDepartamentos] (Dept_Id)
);
GO

CREATE TABLE tbEstadosCiviles(
	EsCi_Id				CHAR(1) NOT NULL,
	EsCi_Descripcion	NVARCHAR(50) NOT NULL,
	EsCi_UsuarioCrea	INT NOT NULL,
	EsCi_FechaCrea		DATETIME NOT NULL,
	EsCi_UsuarioModif	INT,
	EsCi_FechaModif		DATETIME,
	CONSTRAINT PK_dbo_tbEstadosCiviles_EstCiv_Id PRIMARY KEY (EsCi_Id)
);
GO

CREATE TABLE tbColaboradores(
	Cola_Id					INT IDENTITY(1,1),
	Cola_DNI				VARCHAR(13) NOT NULL,
	Cola_Nombre				NVARCHAR(150) NOT NULL,
	Cola_Apellido			NVARCHAR(150) NOT NULL,
	Cola_Sexo				CHAR(1) NOT NULL,
	EsCi_Id					CHAR(1) NOT NULL,
	Cola_FechaNacimiento	DATE NOT NULL,
	Muni_Id					VARCHAR(4) NOT NULL,
	Cola_DireccionExacta	NVARCHAR(200) NOT NULL,
	Cola_Telefono			VARCHAR(14) NOT NULL,
	Cola_Email				NVARCHAR(100) NOT NULL,
	Cola_UsuarioCrea		INT NOT NULL,
	Cola_FechaCrea			DATETIME NOT NULL,
	Cola_UsuarioModif		INT,
	Cola_FechaModif			DATETIME,
	Cola_Estado				BIT	NOT NULL,
	CONSTRAINT PK_dbo_tbColaboradores_Cola_Id PRIMARY KEY (Cola_Id),
	CONSTRAINT UQ_dbo_tbColaboradores_Cola_DNI UNIQUE(Cola_DNI),
	CONSTRAINT CK_dbo_tbColaboradores_Cola_Sexo CHECK (Cola_Sexo IN ('F', 'M')),
	CONSTRAINT FK_dbo_tbColaboradores_EsCi_Id_dbo_tbEstadosCiviles_EsCi_Id FOREIGN KEY (EsCi_Id) REFERENCES [dbo].[tbEstadosCiviles] (EsCi_Id),
	CONSTRAINT FK_dbo_tbColaboradores_Muni_Id_dbo_tbMunicipios_Muni_Id FOREIGN KEY (Muni_Id) REFERENCES [dbo].[tbMunicipios] (Muni_Id)
);
GO

CREATE TABLE tbParticipantes(
	Part_Id					INT IDENTITY(1,1),
	Part_DNI				VARCHAR(13) NOT NULL,
	Part_Nombre				NVARCHAR(150) NOT NULL,
	Part_Apellido			NVARCHAR(150) NOT NULL,
	Part_Sexo				CHAR(1) NOT NULL,
	EsCi_Id					CHAR(1) NOT NULL,
	Part_FechaNacimiento	DATE NOT NULL,
	Muni_Id					VARCHAR(4) NOT NULL,
	Part_DireccionExacta	NVARCHAR(200) NOT NULL,
	Part_Telefono			VARCHAR(14) NOT NULL,
	Part_Email				NVARCHAR(100) NOT NULL,
	Part_UsuarioCrea		INT NOT NULL,
	Part_FechaCrea			DATETIME NOT NULL,
	Part_UsuarioModif		INT,
	Part_FechaModif			DATETIME,
	Part_Estado				BIT	NOT NULL,
	CONSTRAINT PK_dbo_tbParticipantes_Part_Id PRIMARY KEY (Part_Id),
	CONSTRAINT UQ_dbo_tbParticipantes_Part_DNI UNIQUE(Part_DNI),
	CONSTRAINT CK_dbo_tbParticipantes_Part_Sexo CHECK (Part_Sexo IN ('F', 'M')),
	CONSTRAINT FK_dbo_tbParticipantes_EsCi_Id_dbo_tbEstadosCiviles_EsCi_Id FOREIGN KEY (EsCi_Id) REFERENCES [dbo].[tbEstadosCiviles] (EsCi_Id),
	CONSTRAINT FK_dbo_tbParticipantes_Muni_Id_dbo_tbMunicipios_Muni_Id FOREIGN KEY (Muni_Id) REFERENCES [dbo].[tbMunicipios] (Muni_Id)
);
GO

CREATE TABLE tbDeportes(
	Depo_Id				INT IDENTITY(1,1),
	Depo_Deporte		NVARCHAR(200) NOT NULL,
	Depo_UsuarioCrea	INT NOT NULL,
	Depo_FechaCrea		DATETIME NOT NULL,
	Depo_UsuarioModif	INT,
	Depo_FechaModif		DATETIME,
	CONSTRAINT FK_dbo_tbDeportes_Depo_Id PRIMARY KEY (Depo_Id)
);
GO

CREATE TABLE tbEventos(
	Even_Id					INT IDENTITY(1,1),
	Even_Descripcion		NVARCHAR(250) NOT NULL,
	Depo_Id					INT NOT NULL,
	Even_Fecha				DATE NOT NULL,
	Even_Duracion_Minutos	INT NOT NULL,
	Cola_Id_Juez			INT NOT NULL,
	Cola_Id_Observador		INT NOT NULL,
	Even_UsuarioCrea		INT NOT NULL,
	Even_FechaCrea			DATETIME NOT NULL,
	Even_UsuarioModif		INT,
	Even_FechaModif			DATETIME,
	Even_Estado				BIT	NOT NULL,
	CONSTRAINT PK_dbo_tbEventos_Even_Id PRIMARY KEY (Even_Id),
	CONSTRAINT FK_dbo_tbEventos_Even_Deporte_dbo_tbDeportes_Depo_Id FOREIGN KEY (Depo_Id) REFERENCES [dbo].[tbDeportes](Depo_Id),
	CONSTRAINT FK_dbo_tbEventos_Cola_Id_Juez_dbo_tbColaboradores_Cola_Id FOREIGN KEY (Cola_Id_Juez) REFERENCES [dbo].[tbColaboradores](Cola_Id),
	CONSTRAINT FK_dbo_tbEventos_Cola_Id_Observador_dbo_tbColaboradores_Cola_Id FOREIGN KEY (Cola_Id_Observador) REFERENCES [dbo].[tbColaboradores](Cola_Id)
);
GO

CREATE TABLE tbEventosParticipantes(
	EvPa_Id					INT IDENTITY(1,1),
	Even_Id					INT NOT NULL,
	Part_Id					INT NOT NULL,
	EvPa_UsuarioCrea		INT NOT NULL,
	EvPa_FechaCrea			DATETIME NOT NULL,
	EvPa_UsuarioModif		INT,
	EvPa_FechaModif			DATETIME,
	EvPa_Estado				BIT	NOT NULL,
	CONSTRAINT PK_dbo_tbEventosParticipantes_EvPa_Id PRIMARY KEY (EvPa_Id),
	CONSTRAINT FK_dbo_tbEventosParticipantes_EvPa_Eventos_Id_dbo_tbEventos_Eve_Id FOREIGN KEY (Even_Id) REFERENCES [dbo].[tbEventos] (Even_Id),
	CONSTRAINT FK_dbo_tbEventosParticipantes_EvPa_Participante_Id_dbo_tbParticipantes_Par_Id FOREIGN KEY (Part_Id) REFERENCES [dbo].[tbParticipantes] (Part_Id)
);
GO

/*
--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbUsuarios'
ALTER TABLE tbUsuarios ADD CONSTRAINT FK_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Usua_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbUsuarios ADD CONSTRAINT FK_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Usua_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbDepartamentos'
ALTER TABLE tbDepartamentos ADD CONSTRAINT FK_dbo_tbDepartamentos_Dept_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Dept_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbDepartamentos ADD CONSTRAINT FK_dbo_tbDepartamentos_Dept_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Dept_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbMunicipios'
ALTER TABLE tbMunicipios ADD CONSTRAINT FK_dbo_tbMunicipios_Muni_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Muni_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbMunicipios ADD CONSTRAINT FK_dbo_tbMunicipios_Muni_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Muni_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbEstadosCiviles'
ALTER TABLE tbEstadosCiviles ADD CONSTRAINT FK_dbo_tbEstadosCiviles_EsCi_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (EsCi_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbEstadosCiviles ADD CONSTRAINT FK_dbo_tbEstadosCiviles_EsCi_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (EsCi_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbColaboradores'
ALTER TABLE tbColaboradores ADD CONSTRAINT FK_dbo_tbColaboradores_Cola_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Cola_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbColaboradores ADD CONSTRAINT FK_dbo_tbColaboradores_Cola_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Cola_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbParticipantes'
ALTER TABLE tbParticipantes ADD CONSTRAINT FK_dbo_tbParticipantes_Part_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Part_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbParticipantes ADD CONSTRAINT FK_dbo_tbParticipantes_Part_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Part_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbDeportes'
ALTER TABLE tbDeportes ADD CONSTRAINT FK_dbo_tbDeportes_Depo_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Depo_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbDeportes ADD CONSTRAINT FK_dbo_tbDeportes_Depo_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Depo_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbEventos'
ALTER TABLE tbEventos ADD CONSTRAINT FK_dbo_tbEventos_Even_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (Even_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbEventos ADD CONSTRAINT FK_dbo_tbEventos_Even_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (Even_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

--ADD CONSTRAINT FOREIGN KEY Usuario_Crea y Usuario_Modifica a 'tbEventosParticipantes'
ALTER TABLE tbEventosParticipantes ADD CONSTRAINT FK_dbo_tbEventosParticipantes_EvPa_Usuario_Crea_dbo_tbUsuarios_Usua_UsuarioCrea FOREIGN KEY (EvPa_UsuarioCrea) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO

ALTER TABLE tbEventosParticipantes ADD CONSTRAINT FK_dbo_tbEventosParticipantes_EvPa_Usuario_Modif_dbo_tbUsuarios_Usua_UsuarioModif FOREIGN KEY (EvPa_UsuarioModif) REFERENCES [dbo].[tbUsuarios] (Usua_Id);
GO
*/


--CREATE PROCEDURE 'UDP_ValidarLogin'
CREATE OR ALTER PROCEDURE UDP_ValidarLogin
(
	@UserName NVARCHAR(100),
	@Clave NVARCHAR(250)
)
AS
BEGIN
	DECLARE @Pass AS NVARCHAR(MAX);
	SET @Pass = CONVERT(NVARCHAR(MAX), HASHBYTES('sha2_512', @Clave),2)

	SELECT [Usua_Id], [Usua_Nombre] FROM [dbo].[tbUsuarios] WHERE [Usua_Usuario] = @UserName AND [Usua_Clave] = @pass;
END
GO

/*
EXEC UDP_ValidarLogin 'Jesus', 'AdminAHM2023'
*/

/*
--CREATE VIEW 'tbUsuarios'
CREATE OR ALTER VIEW VW_tbUsuarios
AS
SELECT [Usua_Id], [Usua_Nombre] 
FROM [dbo].[tbUsuarios]
GO
*/

--CREATE PROCEDURE 'UDP_Participantes'
CREATE OR ALTER PROCEDURE UDP_Participantes
(
	@Palabra AS NVARCHAR(150)
)
AS
BEGIN
IF @Palabra = '' OR @Palabra = null
BEGIN
	  SELECT  [Part_Id], 
			  [Part_DNI], 
			  [Part_Nombre], 
			  [Part_Apellido], 
			  [Part_Sexo], 
			  [EsCi_Descripcion], 
			  [Muni_Municipio]
		FROM  [dbo].[tbParticipantes] AS tb1
  INNER JOIN  [dbo].[tbEstadosCiviles] tb2
		  ON  tb1.[EsCi_Id] = tb2.EsCi_Id
  INNER JOIN  [dbo].[tbMunicipios] tb3
		  ON  tb1.[Muni_Id] = tb3.[Muni_Id]
	   WHERE  tb1.[Part_Estado] = 1
END
ELSE
BEGIN
	  SELECT  [Part_Id], 
			  [Part_DNI], 
			  [Part_Nombre], 
			  [Part_Apellido], 
			  [Part_Sexo], 
			  [EsCi_Descripcion], 
			  [Muni_Municipio]
		FROM  [dbo].[tbParticipantes] AS tb1
  INNER JOIN  [dbo].[tbEstadosCiviles] tb2
		  ON  tb1.[EsCi_Id] = tb2.EsCi_Id
  INNER JOIN  [dbo].[tbMunicipios] tb3
		  ON  tb1.[Muni_Id] = tb3.[Muni_Id]
	   WHERE  tb1.[Part_Estado] = 1 
	     AND  tb1.Part_Id LIKE '%' + @Palabra + '%'
		  OR  tb1.Part_DNI LIKE '%' + @Palabra + '%'
		  OR  tb1.Part_Nombre LIKE '%' + @Palabra + '%'
		  OR  tb1.Part_Apellido LIKE '%' + @Palabra + '%'
		  OR  tb1.Part_Sexo LIKE '%' + @Palabra + '%'
		  OR  EsCi_Descripcion LIKE '%' + @Palabra + '%'
		  OR  Muni_Municipio LIKE '%' + @Palabra + '%'
END
END
GO

--CREATE PROCEDURE 'UDP_DDLEstadoCivil'
CREATE OR ALTER PROCEDURE UDP_DDLEstadoCivil
AS
BEGIN
	SELECT [EsCi_Id], [EsCi_Descripcion] FROM [dbo].[tbEstadosCiviles]
END
GO

--CREATE PROCEDURE 'UDP_DDLDepartamento'
CREATE OR ALTER PROCEDURE UDP_DDLDepartamento
AS
BEGIN
	SELECT [Dept_Id], [Dept_Departamento] FROM [dbo].[tbDepartamentos]
END
GO

--CREATE PROCEDURE 'UDP_DDLMunicipio'
CREATE OR ALTER PROCEDURE UDP_DDLMunicipio
(
	@Dept_Id AS VARCHAR(2)
)
AS
BEGIN
	SELECT [Muni_Id], [Muni_Municipio] FROM [dbo].[tbMunicipios] WHERE [Dept_Id] = @Dept_Id
END
GO

--CREATE PROCEDURE 'UDP_Insert'
CREATE OR ALTER PROCEDURE UDP_Insert
(
	@DNI AS VARCHAR(13),
	@Nombre AS NVARCHAR(150),
	@Apellido AS NVARCHAR(150),
	@Sexo AS CHAR(1),
	@EstadoCivil_Id AS CHAR(1),
	@FechaNacimiento AS DATE,
	@Municipio_Id AS VARCHAR(4),
	@Direccion AS NVARCHAR(200),
	@Telefono AS VARCHAR(14),
	@Email AS NVARCHAR(100),
	@UsuarioCreacion INT,
	@FechaCreacion DATE
)
AS
BEGIN
	INSERT INTO tbParticipantes
	VALUES(@DNI, @Nombre, @Apellido, @Sexo, @EstadoCivil_Id, @FechaNacimiento, @Municipio_Id, @Direccion, @Telefono, @Email, @UsuarioCreacion, @FechaCreacion, null, null, 1);
END
GO

/*
DECLARE @FechaCrea AS DATETIME;
SET @FechaCrea = GETDATE();

EXEC UDP_Insert '0501200306789', 'Fernanda', 'Motiño', 'F', 'S', '10-17-2003', '0511', 'Res. Las Colinas', '+504 9884-5162', 'fernanda17@gmail.com', 1, @FechaCrea
GO
*/