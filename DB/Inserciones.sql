/*
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
EXEC InsertarEstudiante 'Erick', 'Carballo', 'Porras','2015000001','erick@gmail.com','123123','89451236','Estudiante','2018-11-10','Cantar','Cartago'
EXEC InsertarEstudiante 'Allan Eduardo','Chacon','Sandoval','2015000002','allan@gmail.com','741741','87526341','Estudiante','2018-11-10','Leer','Cartago'
EXEC InsertarEstudiante 'Jose Pablo','Vindas','Campos','2015000003','Vindas@gmail.com','789789','82301202','Estudiante','2018-11-10','Jugar','Cartago'
EXEC InsertarEstudiante 'Jose','Rivera','Tencio','2015000004','ak7@gmail.com','159159','81002365','Estudiante','2018-09-10','Futbol','Cartago'
EXEC InsertarEstudiante 'Stephanny','Jimenez','Navarro','2015000005','loli@gmail.com','357357','85321974','Estudiante','2018-05-10','Jugar','Cartago'
EXEC InsertarEstudiante 'Diana','Villalobos','Castro','2015000006','Diana@gmail.com','741852','83554410','Estudiante','2018-11-09','Bailar','San Jose'
EXEC InsertarEstudiante 'Monica','Delgado','Piedra','2015000007','monik@gmail.com','254125','88895630','Estudiante','2018-11-10','Leer','San Jose'
EXEC InsertarEstudiante 'Gabriela','Solana','Mora','2015000008','gabsol@gmail.com','7854785','84523652','Estudiante','2018-11-09','Correr','San Jose'
EXEC InsertarEstudiante 'Daniela','Ulate','Alfaro','2015000009','dani@gmail.com','7963741','84251100','Estudiante','2018-11-13','Nadar','Alajuela'
EXEC InsertarEstudiante 'Roberto','Santos','Pereira','2015000010','betolan@gmail.com','7897894','87876633','Estudiante','2018-09-10','Peliculas','Alajuela'
EXEC InsertarEstudiante 'Miguel','Chacon','Barboza','2015000011','bar@gmail.com','852341','89975200','Estudiante','2018-08-10','Viajar','San Carlos'
EXEC InsertarEstudiante 'Pedro','Villalta','Lemus','2015000012','Pvillanta@gmail.com','9517530','88339912','Estudiante','2018-07-10','Cocinar','Cartago'
EXEC InsertarEstudiante 'Ana','Castellanos','Ortiz','2015000013','AnaCO@gmail.com','95000530','87378201','Estudiante','2018-07-10','Cocinar','San Carlos'
SELECT * FROM Estudiante


--Insertar EstudianteContacto
EXEC InsertarContacto '87884123','2015000001','Celular'
EXEC InsertarContacto '87800123','2015000003','Celular'
EXEC InsertarContacto '82887123','2015000007','Celular'
EXEC InsertarContacto '88984123','2015000010','Celular'
EXEC InsertarContacto '82332200','2015000011','Celular'
EXEC InsertarContacto 'efcp@hotmail.com','2015000002','Correo'
EXEC InsertarContacto 'SthepN@gmail','2015000005','Correo'
EXEC InsertarContacto 'Au@gmail.com','2015000009','Correo'
EXEC InsertarContacto 'Plemus@hotmail.com','2015000012','Correo'
EXEC InsertarContacto 'Ancatellanos@gmail.com','2015000013','Correo'


--Insetar Administradores
EXEC InsertarAdministrador 'Luis Diego','Noguera','Mena','2003254781','lnoguera@gmail.com','132456','87412563','Administrador','Auditoria'
EXEC InsertarAdministrador 'Laura','Cortes','Ugalde','2003968781','lcortes@gmail.com','130456','89812563','Administrador','Financiero Contable'
EXEC InsertarAdministrador 'Julio Cesar','Calvo','Alvarado','3052968981','jcalvo@gmail.com','000456','85002563','Administrador','Rectoria'

--Insertar CentroAcopio
EXEC InsertarCentroAcopio 'Cartago','Edificio X','CA1'
EXEC InsertarCentroAcopio 'Cartago','Edificio Y','CA2'
EXEC InsertarCentroAcopio 'San Carlos','Edificio Z','CA3'
EXEC InsertarCentroAcopio 'San Jose','Edificio W','CA4'
EXEC InsertarCentroAcopio 'Alajuela','Edificio Q','CA5'

--Insertar Encargado CentroAcopio
EXEC InsertarAdministradorAcopio 'Alfredo','Guzman','Ulate','3227510365','aguzman@gmail.com','002210','81200365','EncargadoCentroAcopio','CA1'
EXEC InsertarAdministradorAcopio 'Martin','Rivera','Mora','3103978546','mmora@hotmail.com','255455','82306901','EncargadoCentroAcopio','CA2'
EXEC InsertarAdministradorAcopio 'Francisco','Morales','Figueres','2387102563','fmorales@hotmail.com','252005','83270010','EncargadoCentroAcopio','CA3'
EXEC InsertarAdministradorAcopio 'Juan','Diaz','Chacon','1203010458','jd@hotmail.com','252589','84001078','EncargadoCentroAcopio','CA4'
EXEC InsertarAdministradorAcopio 'Silvia','Alfaro','Campos','7810002365','silviac@hotmail.com','052525','85889966','EncargadoCentroAcopio','CA5'


--2012-06-15 Formato fecha
--Insertar NuevoMaterial
EXEC NuevoTipoMaterial 'Papel','Todo tipo de papel','3052968981','0.5','2','17-11-18','Creacion Material'
EXEC NuevoTipoMaterial 'Plastico','Todo tipo de plastico','3052968981','0.5','3','17-11-18','Creacion Material'
EXEC NuevoTipoMaterial 'Carton','Todo tipo de carton','3052968981','0.2','1','17-11-18','Creacion Material'
EXEC NuevoTipoMaterial 'Vidrio','Todo tipo de vidrio','3052968981','0.7','2','17-11-18','Creacion Material'

--Modificar Material
EXEC ModificacionMaterial 'Papel','3052968981','0.5','4','18-11-18','Mod. (0.5-2)-(0.5-4)'
EXEC ModificacionMaterial 'Vidrio','3052968981','1','2','18-11-18','Mod. (0.7-2)-(1-2)'

--Insertar NuevoBeneficio
EXEC NuevoTipoBeneficio 'Matricula','Descuento en el pago de creditos','3052968981','10','1','17-11-18','Creacion de beneficio'
EXEC NuevoTipoBeneficio 'ComedorInstitucional','Descuento en el pago de comedor','3052968981','10','1','17-11-18','Creacion de beneficio'

--Modificar Beneficio
EXEC ModificacionBeneficio 'Matricula','3052968981','15','1','18-11-18','Mod. (10-1)-(15-1)'

--Insertar NuevaPromocion
EXEC NuevaPromocion 'Sin Promocion','Sin Promocion','3052968981',NULL,NULL,'17-11-18','Creacion Promocion'
EXEC NuevaPromocion 'Reciclando Papel','Se otorgaran el doble de puntos','3052968981','26-11-18','30-11-18','17-11-18','Creacion Promocion'
EXEC NuevaPromocion 'Alcanzando la meta','Se debe de alcanzar 3000 TEColones para obtener 10000 puntos adicionales','3052968981','01-02-19','01-04-19','17-11-18','Creacion Promocion'
EXEC NuevaPromocion 'Sin plastico en la U','Recolectar 5 Kg de plastico para obtener 10000 puntos adicionales','3052968981','01-09-18','01-11-18','17-11-18','Creacion Promocion'

--Modificacion Promocion
EXEC ModificacionPromocion 'Sin plastico en la U','3052968981','01-02-19','01-04-19','22-12-18','(01-09-18/01-11-18)-(01-02-19/01-04-19)'

-- Insertar IntercambioMaterial
EXEC CambioMaterial '2015000001','CA1','3227510365','Plastico','19-11-18','2','12'
EXEC CambioMaterial '2015000001','CA1','3227510365','Papel','19-11-18','3','24'
EXEC CambioMaterial '2015000001','CA1','3227510365','Vidrio','19-11-18','1','2'
EXEC CambioMaterial '2015000001','CA2','3103978546','Vidrio','19-11-18','2','4'
EXEC CambioMaterial '2015000001','CA2','3103978546','Carton','19-11-18','3','15'
EXEC CambioMaterial '2015000001','CA1','3227510365','Papel','19-11-18','1','16'
EXEC CambioMaterial '2015000001','CA2','3103978546','Papel','27-11-18','4','64'
EXEC CambioMaterial '2015000001','CA1','3227510365','Papel','27-11-18','5','80'
EXEC CambioMaterial '2015000001','CA1','3227510365','Plastico','27-11-18','3','18'
EXEC CambioMaterial '2015000006','CA4','1203010458','Papel','19-11-18','1','16'
EXEC CambioMaterial '2015000006','CA4','1203010458','Papel','27-11-18','2','32'
EXEC CambioMaterial '2015000006','CA4','1203010458','Papel','27-11-18','5','80'
EXEC CambioMaterial '2015000006','CA4','1203010458','Carton','27-11-18','3','15'
EXEC CambioMaterial '2015000002','CA2','3103978546','Plastico','19-11-18','1','6'
EXEC CambioMaterial '2015000002','CA2','3103978546','Papel','27-11-18','2','32'
EXEC CambioMaterial '2015000002','CA1','3227510365','Vidrio','28-11-18','5','10'
EXEC CambioMaterial '2015000002','CA2','3103978546','Carton','30-11-18','3','15'
EXEC CambioMaterial '2015000009','CA5','7810002365','Plastico','18-11-18','1','6'
EXEC CambioMaterial '2015000009','CA5','7810002365','Papel','20-11-18','2','16'
EXEC CambioMaterial '2015000009','CA5','7810002365','Vidrio','27-11-18','5','10'
EXEC CambioMaterial '2015000009','CA5','7810002365','Carton','30-11-18','3','15'


--Insertar CambioBeneficio
EXEC CambioBeneficio '2015000001','Matricula','3000','200','19-11-18'
EXEC CambioBeneficio '2015000001','ComedorInstitucional','1200','120','20-11-18'
EXEC CambioBeneficio '2015000009','Matricula','4000','400','17-11-18'*/


DECLARE  @Prueba varchar(MAX) 
EXEC RetornaBeneficio  @Prueba output 
print @Prueba

