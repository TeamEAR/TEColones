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
EXEC InsertarSedeXTEC 'San Carlos','Direcci�n de la Sede'
EXEC InsertarSedeXTEC 'San Jose','Direcci�n de la Sede'
EXEC InsertarSedeXTEC 'Alajuela','Direcci�n de la Sede'
EXEC InsertarSedeXTEC 'Cartago','Direcci�n de la Sede'
SELECT * FROM SedeXTEC

INSERT InformacionBasica (Nombre, PrimerApellido, SegundoApellido, Identificacion, Correo, Contrase�a, IdTipoRol) VALUES ('Erick Fernando', 'Carballo', 'Porras', '2015000001','erick@hotmail.com','123123',1)
INSERT Estudiante (FechaIncorporacion, Pasatiempo,IdSedeXTEC, IdInformacionBasica) VALUES ('2018-11-12', 'Cantar', 4,1)

