--Insertar Departamentos
EXEC InsertarDepartamento 'Financiero Contable'
EXEC InsertarDepartamento 'Auditoria'
EXEC InsertarDepartamento 'Rectoria'
SELECT * FROM Departamento

--InsertarRoles
EXEC InsertarTipoRol 'Estudiante'
EXEC InsertarTipoRol 'Administrador'
EXEC InsertarTipoRol 'EncargadoCentroAcopio'
SELECT * FROM TipoRol

--InsertarTipoContacto
EXEC InsertarTipoContacto 'Correo'
EXEC InsertarTipoContacto 'Celular'
SELECT * FROM TipoContacto

--Insetar SedeXTEC
EXEC InsertarSedeXTEC 'San Carlos','Dirección de la Sede'
EXEC InsertarSedeXTEC 'San Jose','Dirección de la Sede'
EXEC InsertarSedeXTEC 'Alajuela','Dirección de la Sede'
EXEC InsertarSedeXTEC 'Cartago','Dirección de la Sede'
SELECT * FROM SedeXTEC

INSERT InformacionBasica (Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contraseña, IdTipoRol) VALUES ('Erick Fernando', 'Carballo', 'Porras', '2015000001','erick@hotmail.com','123123',1)
INSERT Estudiante (FechaIncorporacion, Pasatiempo,IdSedeXTEC, IdInformacionBasica) VALUES ('2018-11-12', 'Cantar', 4,1)

