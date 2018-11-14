
-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla TipoMaterial AUXILIAR>
-- Par�metro de Entrada: <NombreTipoMaterial, CaracteristicaMaterial>
-- Par�metro de Salida: <IdTipoMaterial>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarTipoMaterial
	@NombreTipoMaterial varchar(30),
	@CaracteristicaMaterial varchar(150),
	@IdTipoMaterial int Output 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoMaterial(NombreTipoMaterial, CaracteristicaMaterial) VALUES (@NombreTipoMaterial,@CaracteristicaMaterial)
		SET @IdTipoMaterial = SCOPE_IDENTITY()
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Departamento>
-- Par�metro de Entrada: <NombreDepartamento>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarDepartamento 
	@NombreDepartamento varchar(50) 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO Departamento(NombreDepartamento) VALUES (@NombreDepartamento)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla TipoRol>
-- Par�metro de Entrada: <NombreRol>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarTipoRol 
	@NombreRol varchar(25) 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoRol(NombreRol) VALUES (@NombreRol)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla TipoBeneficio AUXILIAR>
-- Par�metro de Entrada: <NombreBeneficio, DescripcionBeneficio>
-- Par�metro de Salida: <IdTipoBeneficio>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarTipoBeneficio 
	@NombreBeneficio varchar(30),
	@DescripcionBeneficio varchar(150),
	@IdTipoBeneficio int OutPut
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoBeneficio(NombreBeneficio,DescripcionBeneficio) VALUES (@NombreBeneficio,@DescripcionBeneficio)
		SET @IdTipoBeneficio = SCOPE_IDENTITY()
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar paramentros en la Tabla TipoContacto>
-- Par�metro de Entrada: <NombreTipoContacto>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarTipoContacto 
	@NombreTipoContacto varchar(20) 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO TipoContacto(NombreTipoContacto) VALUES (@NombreTipoContacto)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Promocion AUXILIAR>
-- Par�metro de Entrada: <NombrePromocion, DescripcionPromocion>
-- Par�metro de Salida: <IdPromocion>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarPromocion 
	@NombrePromocion varchar(50),
	@DescripcionPromocion varchar(150),
	@IdPromocion int OutPut
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO Promocion(NombrePromocion, DescripcionPromocion) VALUES (@NombrePromocion,@DescripcionPromocion)
		SET @IdPromocion = SCOPE_IDENTITY()
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla SedeXTEC>
-- Par�metro de Entrada: <NombreSedeXTEC, UbicacionSede>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarSedeXTEC
	@NombreSedeXTEC varchar(50),
	@UbicacionSede varchar(100) 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		INSERT INTO SedeXTEC(NombreSedeXTEC, UbicacionSede) VALUES (@NombreSedeXTEC, @UbicacionSede)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla InformacionBasica>
-- Par�metro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, NombreRol>
-- Par�metro de Salida: <IdInformacionBasica>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarInformacionBasica
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contrase�a varchar(50),
	@NombreRol varchar(25),
	@IdInformacionBasica int OutPut
	 
AS
BEGIN
	DECLARE
	@IdTipoRol int


	SELECT @IdTipoRol = TipoRol.IdTipoRol FROM TipoRol
	WHERE @NombreRol = TipoRol.NombreRol;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO InformacionBasica(Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, IdTipoRol)
		VALUES (@Nombre, @PrimerApellido, @SegundoApellido, @Identificacion, @Correo, @Contrase�a, @IdTipoRol)
		SET @IdInformacionBasica= SCOPE_IDENTITY()
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Estudiante>
-- Par�metro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, NombreRol, FechaIncorporacion, Pasatiempo, NombreSedeXTEC>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarEstudiante
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contrase�a varchar(50),
	@NombreRol varchar(25),
	
	@FechaIncorporacion date,
	@Pasatiempo text,
	@NombreSedeXTEC varchar(50)
	
	 
AS
BEGIN
	DECLARE
	@IdInformacionBasica int,
	@IdSedeXTEC int

	SELECT @IdSedeXTEC = SedeXTEC.IdSedeXTEC FROM SedeXTEC
	WHERE @NombreSedeXTEC = SedeXTEC.NombreSedeXTEC
	

	BEGIN TRAN
	BEGIN TRY

		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contrase�a, @NombreRol, @IdInformacionBasica

		INSERT INTO Estudiante(FechaIncorporacion, Pasatiempo, IdSedeXTEC, IdInformacionBasica) VALUES (@FechaIncorporacion, @Pasatiempo, @IdSedeXTEC, @IdInformacionBasica)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla EstudianteContacto>
-- Par�metro de Entrada: <Contacto, Carnet, TipoContacto>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertaEstudianteContacto
	@Contacto varchar(30),
	@Carnet varchar(10),
	@TipoContacto varchar(20)
	 
AS
BEGIN
	DECLARE
	@IdEstudiante int,
	@IdTipoContacto int


	SELECT @IdEstudiante = Estudiante.IdEstudiante FROM Estudiante
	INNER JOIN InformacionBasica ON Estudiante.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @Carnet = InformacionBasica.Identificacion;

	SELECT @IdTipoContacto = TipoContacto.IdTipoContacto FROM TipoContacto
	WHERE @TipoContacto = TipoContacto.NombreTipoContacto;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO EstudianteContacto(IdEstudiante, IdTipoContacto, Contacto)  VALUES (@IdEstudiante, @IdTipoContacto, @Contacto);
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO

--
-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla Administrador>
-- Par�metro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, NombreRol, NombreDepartamento>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarAdministrador
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contrase�a varchar(50),
	@NombreRol varchar(25),
	
	@NombreDepartamento varchar(50)
	
	 
AS
BEGIN
	DECLARE
	@IdDepartamento int,
	@IdInformacionBasica int

	SELECT @IdDepartamento = Departamento.IdDepartamento FROM Departamento
	WHERE @NombreDepartamento = Departamento.NombreDepartamento
	

	BEGIN TRAN
	BEGIN TRY

		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contrase�a, @NombreRol, @IdInformacionBasica

		INSERT INTO Administrador(IdDepartamento, IdInformacionBasica) VALUES (@IdDepartamento, @IdInformacionBasica)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO

