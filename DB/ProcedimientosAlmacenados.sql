
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

RETURN @IdTipoMaterial
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

RETURN @IdTipoBeneficio 
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
 
RETURN @IdPromocion
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
-- Descripcion:	<Insertar parametros en la Tabla EstudianteContacto>
-- Par�metro de Entrada: <Contacto, Carnet, TipoContacto>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarContacto
	@Contacto varchar(50),
	@Identificacion varchar(10),
	@TipoContacto varchar(20)
	 
AS
BEGIN
	DECLARE
	@IdIdentificacion int,
	@IdTipoContacto int
 
	SELECT @IdIdentificacion = InformacionBasica.IdInformacionBasica FROM InformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion;

	SELECT @IdTipoContacto = TipoContacto.IdTipoContacto FROM TipoContacto
	WHERE @TipoContacto = TipoContacto.NombreTipoContacto;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO InformacionBasicaContacto(IdInformacionBasica, IdTipoContacto, Contacto)  VALUES (@IdIdentificacion, @IdTipoContacto, @Contacto)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla InformacionBasica AUXILIAR>
-- Par�metro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, NombreRol>
-- Par�metro de Salida: <IdInformacionBasica>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarInformacionBasica
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(50),
	@Contrase�a varchar(50),
	@Telefono varchar (50),
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
		INSERT INTO InformacionBasica(Nombre, PrimerApellido, SegundoApellido, Identificacion, Contrase�a, IdTipoRol)
		VALUES (@Nombre, @PrimerApellido, @SegundoApellido, @Identificacion, @Contrase�a, @IdTipoRol)
		SET @IdInformacionBasica= SCOPE_IDENTITY() --@@IDENTITY
		EXEC InsertarContacto @Telefono, @Identificacion, 'Celular'
		EXEC InsertarContacto @Correo, @Identificacion, 'Correo'
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH

RETURN @IdInformacionBasica
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
	@Telefono varchar (50),
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
		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contrase�a, @Telefono, @NombreRol, @IdInformacionBasica
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
	@Telefono varchar(50),
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

		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contrase�a, @Telefono, @NombreRol, @IdInformacionBasica
		INSERT INTO Administrador(IdDepartamento, IdInformacionBasica) VALUES (@IdDepartamento, @IdInformacionBasica)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla CentroAcopio>
-- Par�metro de Entrada: <NombreSede, Ubicacion>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarCentroAcopio
	@NombreSede varchar(30),
	@Ubicacion varchar(10),
	@Identificador varchar(8)
	 
AS
BEGIN
	DECLARE
	@IdSedeXTEC int

	SELECT @IdSedeXTEC = SedeXTEC.IdSedeXTEC FROM SedeXTEC
	WHERE @NombreSede = SedeXTEC.NombreSedeXTEC;

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO CentroAcopio(IdSedeXTEC, Ubicacion, Identificador)  VALUES (@IdSedeXTEC, @Ubicacion, @Identificador);
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla EncargadoCentroAcopio>
-- Par�metro de Entrada: <Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, NombreRol, IdentificadorCentroAcopio>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE InsertarAdministradorAcopio
	@Nombre varchar(50),
	@PrimerApellido varchar(25),
	@SegundoApellido varchar(25),
	@Identificacion varchar(10),
	@Correo varchar(100),
	@Contrase�a varchar(50),
	@Telefono varchar(50),
	@NombreRol varchar(25),
	
	@IdentificadorCentroAcopio varchar(50)
		 
AS
BEGIN
	DECLARE
	@IdCentroAcopio int,
	@IdInformacionBasica int

	SELECT @IdCentroAcopio = CentroAcopio.IdCentroAcopio FROM CentroAcopio
	WHERE @IdentificadorCentroAcopio = CentroAcopio.Identificador
	
	BEGIN TRAN
	BEGIN TRY
		EXEC @IdInformacionBasica = InsertarInformacionBasica @Nombre, @PrimerApellido, SegundoApellido, @Identificacion, @Correo, @Contrase�a, @Telefono, @NombreRol, @IdInformacionBasica
		INSERT INTO EncargadoCentroAcopio(IdInformacionBasica, IdCentroAcopio) VALUES (@IdInformacionBasica, @IdCentroAcopio)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla HistorialTipoMaterial y TipoMaterial>
-- Par�metro de Entrada: <NombreMaterial, CaracteristicaMaterial, Identificacion, EquivalenciaTEColones, PesoBaseMaterial, FechaModificacion>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE NuevoTipoMaterial
	@NombreTipoMaterial varchar(30),
	@CaracteristicaMaterial varchar(150),
	@Identificacion varchar(10),
	@PesoBaseMaterial float,
	@EquivalenciaTEColones float,
	@FechaModificacion date,
	@DetalleModificacion varchar(200)

AS
BEGIN
	DECLARE
	@IdTipoMaterial int,
	@IdAdmi int

	SELECT @IdAdmi =  Administrador.IdAdmi FROM Administrador
	INNER JOIN InformacionBasica ON Administrador.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion

	BEGIN TRAN
	BEGIN TRY
		EXEC @IdTipoMaterial = InsertarTipoMaterial @NombreTipoMaterial, @CaracteristicaMaterial, @IdTipoMaterial
		INSERT INTO HistorialTipoMaterial(IdTipoMaterial, IdAdmi, EquivalenciaTecolones, PesoBaseMaterial, FechaModificacion, DetalleModificacion) 
		VALUES (@IdTipoMaterial, @IdAdmi, @EquivalenciaTEColones, @PesoBaseMaterial, @FechaModificacion, @DetalleModificacion)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla HistorialTipoMaterial (MODIFICAR MATERIAL)>
-- Par�metro de Entrada: <NombreMaterial, Identificacion, EquivalenciaTEColones, PesoBaseMaterial, FechaModificacion>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE ModificacionMaterial
	@NombreTipoMaterial varchar(30),
	@Identificacion varchar(10),
	@PesoBaseMaterial float,
	@EquivalenciaTEColones float,
	@FechaModificacion date,
	@DetalleModificacion varchar(200)
	 
AS
BEGIN
	DECLARE
	@IdTipoMaterial int,
	@IdAdmi int
	
	SELECT @IdAdmi =  Administrador.IdAdmi FROM Administrador
	INNER JOIN InformacionBasica ON Administrador.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion

	SELECT @IdTipoMaterial = TipoMaterial.IdTipoMaterial FROM TipoMaterial
	WHERE @NombreTipoMaterial = TipoMaterial.NombreTipoMaterial

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO HistorialTipoMaterial(IdTipoMaterial, IdAdmi, EquivalenciaTecolones, PesoBaseMaterial, FechaModificacion, DetalleModificacion) 
		VALUES (@IdTipoMaterial, @IdAdmi, @EquivalenciaTEColones, @PesoBaseMaterial, @FechaModificacion, @DetalleModificacion)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla HistorialTipoBeneficio y TipoBeneficio>
-- Par�metro de Entrada: <NombreBeneficio, DescripcionBeneficio, Identificacion, CantidadBaseTecolones, EquivalenciaColones, FechaModificacion, DetalleModificacion>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE NuevoTipoBeneficio
	@NombreBeneficio varchar(30),
	@DescripcionBeneficio varchar(150),
	@Identificacion varchar(10),
	@CantidadBaseTEColones float,
	@EquivalenciaColones float,
	@FechaModificacion date,
	@DetalleModificacion varchar(200)
	 
AS
BEGIN
	DECLARE
	@IdTipoBeneficio int,
	@IdAdmi int

	SELECT @IdAdmi =  Administrador.IdAdmi FROM Administrador
	INNER JOIN InformacionBasica ON Administrador.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion

	BEGIN TRAN
	BEGIN TRY
		EXEC @IdTipoBeneficio = InsertarTipoBeneficio @NombreBeneficio, @DescripcionBeneficio, @IdTipoBeneficio
		INSERT INTO HistorialTipoBeneficio(IdTipoBeneficio, IdAdmi, CantidadBaseTecolones, EquivalenciaColones, FechaModificacion, DetalleModificacion) 
		VALUES (@IdTipoBeneficio, @IdAdmi, @CantidadBaseTEColones, @EquivalenciaColones, @FechaModificacion, @DetalleModificacion)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- Descripcion:	<Insertar parametros en la Tabla HistorialTipoBeneficio(MODIFICAR BENEFICIO)>
-- Par�metro de Entrada: <NombreBeneficio, Identificacion, CantidadBaseTecolones, EquivalenciaColones, FechaModificacion, DetalleModificacion>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE ModificacionBeneficio
	@NombreBeneficio varchar(30),
	@Identificacion varchar(10),
	@CantidadBaseTEColones float,
	@EquivalenciaColones float,
	@FechaModificacion date,
	@DetalleModificacion varchar(200)
	 
AS
BEGIN
	DECLARE
	@IdTipoBeneficio int,
	@IdAdmi int
	
	SELECT @IdAdmi =  Administrador.IdAdmi FROM Administrador
	INNER JOIN InformacionBasica ON Administrador.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion

	SELECT @IdTipoBeneficio = TipoBeneficio.IdTipoBeneficio FROM TipoBeneficio
	WHERE @NombreBeneficio = TipoBeneficio.NombreBeneficio

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO HistorialTipoBeneficio(IdTipoBeneficio, IdAdmi, CantidadBaseTecolones, EquivalenciaColones, FechaModificacion, DetalleModificacion) 
		VALUES (@IdTipoBeneficio, @IdAdmi, @CantidadBaseTEColones, @EquivalenciaColones, @FechaModificacion, @DetalleModificacion)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla HistorialPromocion y Promocion>
-- Par�metro de Entrada: <NombrePromocion, DescripcionPromocion, Identificacion, FechaInicio, FechaFin, FechaModificacion, DetalleModificacion>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE NuevaPromocion
	@NombrePromocion varchar(50),
	@DescripcionPromocion varchar(150),
	@Identificacion varchar(10),
	@FechaInicio datetime,
	@FechaFin datetime,
	@FechaModificacion date,
	@DetalleModificacion varchar(200)
	 
AS
BEGIN
	DECLARE
	@IdPromocion int,
	@IdAdmi int

	SELECT @IdAdmi =  Administrador.IdAdmi FROM Administrador
	INNER JOIN InformacionBasica ON Administrador.IdInformacionBasica = InformacionBasica.IdInformacionBasica
	WHERE @Identificacion = InformacionBasica.Identificacion

	BEGIN TRAN
	BEGIN TRY
		EXEC @IdPromocion = InsertarPromocion @NombrePromocion, @DescripcionPromocion, @IdPromocion
		INSERT INTO HistorialPromocion(IdPromocion, IdAdmi, FechaInicio, FechaFin, FechaModificacion, DetalleModificacion) 
		VALUES (@IdPromocion, @IdAdmi, @FechaInicio, @FechaFin, @FechaModificacion, @DetalleModificacion)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO


-- =============================================
-- Descripcion:	<Insertar parametros en la Tabla CambioMaterialEstudiante>
-- Par�metro de Entrada: <>
-- Par�metro de Salida: <Ninguno>
-- =============================================
CREATE OR ALTER PROCEDURE CambioMaterial
	@IdentificacionEstudiante varchar(10),
	@DIdentificadorCentroAcopio varchar(8),
	@IdentificacionEncargado varchar(10),
	@TipoMaterial varchar(25),
	@FechaCambio date,
	@PesoCambio float,
	@TecolonesAdquiridos float
	 
AS
BEGIN
	DECLARE
	@IdPromocion int,
	@IdEstudiante int,
	@IdEncargadoCentroAcopio int,
	@IdCambioActual int
	
	SELECT @IdEstudiante = InformacionBasica.IdInformacionBasica FROM InformacionBasica
	WHERE @IdentificacionEstudiante = InformacionBasica.Identificacion

	SELECT @IdEncargadoCentroAcopio = InformacionBasica.IdInformacionBasica FROM InformacionBasica
	WHERE @IdentificacionEncargado = InformacionBasica.Identificacion

	SELECT @IdPromocion = HistorialPromocion.IdHistorialPromocion FROM HistorialPromocion
	WHERE @FechaCambio BETWEEN HistorialPromocion.FechaInicio AND HistorialPromocion.FechaFin

	SELECT @IdCambioActual = HistorialTipoMaterial.IdHistorialTipoMaterial FROM HistorialTipoMaterial
	INNER JOIN TipoMaterial ON HistorialTipoMaterial.IdTipoMaterial = TipoMaterial.IdTipoMaterial
	WHERE HistorialTipoMaterial.FechaModificacion =(SELECT MAX(HistorialTipoMaterial.FechaModificacion) FROM HistorialPromocion
	WHERE @TipoMaterial = TipoMaterial.NombreTipoMaterial)

	BEGIN TRAN
	BEGIN TRY
		INSERT INTO CambioMaterialEstudiante(IdHistorialTipoMaterial, IdEstudiante, IdEncargadoCentroAcopio, IdHistorialPromocion, FechaCambio, PesoReciclaje, TecolonesAdquiridos) 
		VALUES (@IdCambioActual, @IdEstudiante, @IdEncargadoCentroAcopio, @IdPromocion, @FechaCambio, @PesoCambio, @TecolonesAdquiridos)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		SELECT ERROR_PROCEDURE() AS ErrorProcedimiento, ERROR_MESSAGE() AS TipoError
		ROLLBACK TRANSACTION
	END CATCH
  
END
GO