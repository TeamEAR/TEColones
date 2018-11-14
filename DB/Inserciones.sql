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

--Insertar Estudiantes
EXEC InsertarEstudiante 'Erick', 'Carballo', 'Porras','2015000001','erick@gmail.com','123123','Estudiante','2018-11-10','Cantar','Cartago'
EXEC InsertarEstudiante 'Allan Eduardo','Chacon','Sandoval','2015000002','allan@gmail.com','741741','Estudiante','2018-11-10','Leer','Cartago'
EXEC InsertarEstudiante 'Jose Pablo','Vindas','Campos','2015000003','Vindas@gmail.com','789789','Estudiante','2018-11-10','Jugar','Cartago'
EXEC InsertarEstudiante 'Jose','Rivera','Tencio','2015000004','ak7@gmail.com','159159','Estudiante','2018-09-10','Futbol','Cartago'
EXEC InsertarEstudiante 'Stephanny','Jimenez','Navarro','2015000005','loli@gmail.com','357357','Estudiante','2018-05-10','Jugar','Cartago'
EXEC InsertarEstudiante 'Diana','Villalobos','Castro','2015000006','Diana@gmail.com','741852','Estudiante','2018-11-09','Bailar','San Jose'
EXEC InsertarEstudiante 'Monica','Delgado','Piedra','2015000007','monik@gmail.com','254125','Estudiante','2018-11-10','Leer','San Jose'
EXEC InsertarEstudiante 'Gabriela','Solana','Mora','2015000008','gabsol@gmail.com','7854785','Estudiante','2018-11-09','Correr','San Jose'
EXEC InsertarEstudiante 'Daniela','Ulate','Alfaro','2015000009','dani@gmail.com','7963741','Estudiante','2018-11-13','Nadar','Alajuela'
EXEC InsertarEstudiante 'Roberto','Santos','Pereira','2015000010','betolan@gmail.com','7897894','Estudiante','2018-09-10','Peliculas','Alajuela'
EXEC InsertarEstudiante 'Miguel','Chacon','Barboza','2015000011','bar@gmail.com','852341','Estudiante','2018-08-10','Viajar','San Carlos'
EXEC InsertarEstudiante 'Pedro','Villalta','Lemus','2015000012','Pvillanta@gmail.com','9517530','Estudiante','2018-07-10','Cocinar','Cartago'
EXEC InsertarEstudiante 'Ana','Castellanos','Ortiz','2015000013','AnaCO@gmail.com','95000530','Estudiante','2018-07-10','Cocinar','San Carlos'
SELECT * FROM Estudiante