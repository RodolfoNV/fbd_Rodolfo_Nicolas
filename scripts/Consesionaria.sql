-- Active: 1716830926481@@127.0.0.1@3306@consecionaria


-- Creación de las tablas
CREATE TABLE IF NOT EXISTS Concesionaria  (
    id_concesionaria INT AUTO_INCREMENT PRIMARY KEY,
    Direccion VARCHAR(150) ,
    Correo VARCHAR(50),
    Telefono CHAR(15),
    rol ENUM('admin', 'usuario', 'reporter')
);

CREATE TABLE IF NOT EXISTS Autos (
    ID_Vehiculo INT AUTO_INCREMENT PRIMARY KEY,
    Marca VARCHAR(30),
    Modelo VARCHAR(30),
    Año YEAR,
    Tipo VARCHAR(30),
    id_color int REFERENCES color_auto(id_color),
    Color VARCHAR(30), -- rojo, verde
    Cilindraje VARCHAR(30),
    id_transmision VARCHAR REFERENCES transmision_auto(id_transmision),
    Transmicion VARCHAR(30),-- manual, automatica, etc
    Precio DECIMAL(9,2),
    Placa VARCHAR(10),
    id_estado VARCHAR REFERENCES estado_auto(id_estado,)
    Estado VARCHAR(10), -- nuevo, usado, etc
    Combustible VARCHAR(10),
    id_traccion VARCHAR REFERENCES traccion_auto(id_traccion),
    Traccion VARCHAR(50), -- Tracción en las cuatro ruedas, tracción trasera, tracción en las cuatro ruedas, tracción en las cuatro ruedas
    id_kilometraje VARCHAR REFERENCES kilometraje_auto(id_kilometraje)
    Kilometraje INT
);

ALTER Table autos add COLUMN id_color int REFERENCES color_auto(id_color);
ALTER Table autos drop COLUMN Color; 

create table color_auto (
    id_color INT AUTO_INCREMENT,
    color VARCHAR(30),
    PRIMARY KEY (id_color)
);

INSERT INTO color_auto(color) values
('rojo'),
('verde'),
('azul'),
('amarillo'),
('naranja'),
('morado'),
('rosa'),
('marrón'),
('negro'),
('blanco');


UPDATE autos SET id_color = 1 WHERE `ID_Vehiculo` = 1;
UPDATE autos SET id_color = 2 WHERE `ID_Vehiculo` = 2;
UPDATE autos SET id_color = 3 WHERE `ID_Vehiculo` = 3;
UPDATE autos SET id_color = 4 WHERE `ID_Vehiculo` = 4;
UPDATE autos SET id_color = 5 WHERE `ID_Vehiculo` = 5;
UPDATE autos SET id_color = 6 WHERE `ID_Vehiculo` = 6;
UPDATE autos SET id_color = 7 WHERE `ID_Vehiculo` = 7;
UPDATE autos SET id_color = 8 WHERE `ID_Vehiculo` = 8;
UPDATE autos SET id_color = 9 WHERE `ID_Vehiculo` = 9;
UPDATE autos SET id_color = 10 WHERE `ID_Vehiculo` = 10;

ALTER Table autos add COLUMN id_transmision int REFERENCES transmision_auto(id_transmision);
ALTER Table autos drop COLUMN Transmicion; 
create table IF NOT EXISTS transmision_auto (
    id_transmision INT AUTO_INCREMENT,
    transmision VARCHAR(50),
    PRIMARY KEY (id_transmision)
);


INSERT INTO transmision_auto (transmision) VALUES
('Manual'),
('Automática'),
('CVT (Transmisión Variable Continua)'),
('Automática de doble embrague'),
('Automática de 8 velocidades'),
('Automática de 10 velocidades'),
('Semi-automática'),
('Automática secuencial'),
('Automática con convertidor de par'),
('Transmisión manual automatizada');

UPDATE autos SET id_transmision = 1 WHERE `ID_Vehiculo` = 1;
UPDATE autos SET id_transmision = 2 WHERE `ID_Vehiculo` = 2;
UPDATE autos SET id_transmision = 3 WHERE `ID_Vehiculo` = 3;
UPDATE autos SET id_transmision = 4 WHERE `ID_Vehiculo` = 4;
UPDATE autos SET id_transmision = 5 WHERE `ID_Vehiculo` = 5;
UPDATE autos SET id_transmision = 6 WHERE `ID_Vehiculo` = 6;
UPDATE autos SET id_transmision = 7 WHERE `ID_Vehiculo` = 7;
UPDATE autos SET id_transmision = 8 WHERE `ID_Vehiculo` = 8;
UPDATE autos SET id_transmision = 9 WHERE `ID_Vehiculo` = 9;
UPDATE autos SET id_transmision = 10 WHERE `ID_Vehiculo` = 10;

ALTER TABLE autos ADD COLUMN id_estado INT REFERENCES estado_auto(id_estado);
ALTER TABLE autos DROP COLUMN Estado;


CREATE TABLE IF NOT EXISTS estado_auto (
    id_estado INT AUTO_INCREMENT,
    estado VARCHAR(30),
    PRIMARY KEY (id_estado)
);

INSERT INTO estado_auto (estado) VALUES
('Nuevo'),
('Usado'),
('Seminuevo'),
('Certificado'),
('Reparado'),
('Importado'),
('Demo'),
('Dañado'),
('Recuperado'),
('En consignación');

UPDATE autos SET id_estado = 1 WHERE `ID_Vehiculo` = 1;
UPDATE autos SET id_estado = 2 WHERE `ID_Vehiculo` = 2;
UPDATE autos SET id_estado = 3 WHERE `ID_Vehiculo` = 3;
UPDATE autos SET id_estado = 4 WHERE `ID_Vehiculo` = 4;
UPDATE autos SET id_estado = 5 WHERE `ID_Vehiculo` = 5;
UPDATE autos SET id_estado = 6 WHERE `ID_Vehiculo` = 6;
UPDATE autos SET id_estado = 7 WHERE `ID_Vehiculo` = 7;
UPDATE autos SET id_estado = 8 WHERE `ID_Vehiculo` = 8;
UPDATE autos SET id_estado = 9 WHERE `ID_Vehiculo` = 9;
UPDATE autos SET id_estado = 10 WHERE `ID_Vehiculo` = 10;


CREATE TABLE IF NOT EXISTS traccion_auto (
    id_traccion INT AUTO_INCREMENT,
    traccion VARCHAR(30),
    PRIMARY KEY (id_traccion)
);


INSERT INTO traccion_auto (traccion) VALUES
('Tracción Total (AWD)'), 
('Tracción Trasera (RWD)'),
('Tracción Delantera (FWD)'), 
('Tracción en las Cuatro Ruedas (4WD)'); 

ALTER TABLE autos ADD COLUMN id_traccion INT REFERENCES traccion_auto(id_traccion);

ALTER TABLE autos DROP COLUMN Traccion;

UPDATE autos SET id_traccion = 1 WHERE `ID_Vehiculo` = 1; 
UPDATE autos SET id_traccion = 4 WHERE `ID_Vehiculo` = 2; 
UPDATE autos SET id_traccion = 2 WHERE `ID_Vehiculo` = 3; 
UPDATE autos SET id_traccion = 2 WHERE `ID_Vehiculo` = 4; 
UPDATE autos SET id_traccion = 1 WHERE `ID_Vehiculo` = 5; 
UPDATE autos SET id_traccion = 2 WHERE `ID_Vehiculo` = 6; 
UPDATE autos SET id_traccion = 1 WHERE `ID_Vehiculo` = 7; 
UPDATE autos SET id_traccion = 1 WHERE `ID_Vehiculo` = 8; 
UPDATE autos SET id_traccion = 2 WHERE `ID_Vehiculo` = 9; 
UPDATE autos SET id_traccion = 1 WHERE `ID_Vehiculo` = 10; 

CREATE TABLE kilometraje_auto (
    id_kilometraje INT AUTO_INCREMENT,
    kilometraje INT,
    PRIMARY KEY (id_kilometraje)
);

ALTER TABLE autos ADD COLUMN id_kilometraje VARCHAR(50) REFERENCES kilometraje_auto(id_kilometraje);


ALTER TABLE autos DROP COLUMN Kilometraje;

INSERT INTO kilometraje_auto (kilometraje) VALUES
(00000),
(20000),
(30000),
(40000),
(50000),
(60000),
(70000),
(80000),
(90000),
(100000);

UPDATE autos SET id_kilometraje = '1' WHERE ID_Vehiculo = 1;
UPDATE autos SET id_kilometraje = '2' WHERE ID_Vehiculo = 2;
UPDATE autos SET id_kilometraje = '3' WHERE ID_Vehiculo = 3;
UPDATE autos SET id_kilometraje = '4' WHERE ID_Vehiculo = 4;
UPDATE autos SET id_kilometraje = '5' WHERE ID_Vehiculo = 5;
UPDATE autos SET id_kilometraje = '6' WHERE ID_Vehiculo = 6;
UPDATE autos SET id_kilometraje = '7' WHERE ID_Vehiculo = 7;
UPDATE autos SET id_kilometraje = '8' WHERE ID_Vehiculo = 8;
UPDATE autos SET id_kilometraje = '9' WHERE ID_Vehiculo = 9;
UPDATE autos SET id_kilometraje = '10' WHERE ID_Vehiculo = 10;

CREATE TABLE IF NOT EXISTS Cliente (
    CLIENTE_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Telefono CHAR(10) NOT NULL,
    Direccion VARCHAR(50) NOT NULL
     
);

CREATE TABLE IF NOT EXISTS Empleado (
    ID_Empleado INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL,
    Direccion VARCHAR(100),
    Correo VARCHAR(50),
    Telefono CHAR(10)
);

CREATE TABLE IF NOT EXISTS Auto_Vendido (
    venta_id INT AUTO_INCREMENT PRIMARY KEY,
    auto_id INT NOT NULL,
    id_propietario INT NOT NULL,
    id_concesionaria INT,
    ID_Empleado INT NOT NULL,
    Fecha_venta DATE,
    Precio_venta DECIMAL(9,2),
    Metodo_pago VARCHAR(30),
    FOREIGN KEY (id_concesionaria) REFERENCES Concesionaria(id_concesionaria),
    FOREIGN KEY (auto_id) REFERENCES Autos(ID_Vehiculo),
    FOREIGN KEY (id_propietario) REFERENCES Cliente(CLIENTE_ID),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado)
);

INSERT INTO auto_vendido
(auto_id, id_propietario, id_concesionaria, ID_Empleado, Fecha_venta, Precio_venta,Metodo_pago  )
VALUES
(1, 1, 1, 1, '2023-01-15',25000.00, 'Tarjeta de crédito'),
(2, 2, 2, 2, '2023-02-10',30000.00, 'Efectivo'),
(3, 3, 3, 3, '2023-03-05',27000.00, 'Transferencia bancaria'),
(4, 4, 4, 4, '2023-04-20',35000.00, 'Tarjeta de crédito'),
(5, 5, 5, 5, '2023-05-25',32000.00, 'Efectivo'),
(6, 6, 6, 6, '2023-06-30',29000.00, 'Transferencia bancaria'),
(7, 7, 7, 7, '2023-07-15',26000.00, 'Tarjeta de crédito'),
(8, 8, 8, 8, '2023-08-10',33000.00, 'Efectivo'),
(9, 9, 9, 9, '2023-09-05',28000.00, 'Transferencia bancaria'),
(10, 10, 10, 10, '2023-10-20',34000.00, 'Tarjeta de crédito');

INSERT INTO concesionaria(
Direccion,
Correo,
Telefono,
rol
)
values 
('Direccion 1','email@example.com',' 1111191', 'usuario'),
('Direccion 2','email1@example.com','0000001','admin'),
('Direccion 3','email2@example.com','1234587','reporter'),
('Direccion 4','email3@example.com','02345653','usuario'),
('Direccion 5','email41@example.com','15646753','admin'),
('Direccion 6','email5@example.com','2349859','reporter'),
('Direccion 7','email6@example.com','1235532','admin'),
('Direccion 8','email7@example.com','9864289','usuario'),
('Direccion 9','email8@example.com','1928653','reporter'),
('Direccion 10','email9@example.com','8964678','admin');

INSERT INTO Autos (Marca,Modelo,Año,Tipo,Color,Cilindraje,Transmicion,Precio,Placa,Estado,Combustible,Traccion,Kilometraje)
    
    VALUES
    ('Lamborghini','Huracan','2022','Deportivo','Varios colores disponibles','V10','Automatica',78338.57,'LMH-1234','Nuevo','Gasolina','cuatro por cuatro','0'),
    ('Ford','F_150','2024','Camioneta','Varios colores disponibles','V6','Automática',88954.50,'XYZ-5678','Nuevo','Gasolina','En las cuatro ruedas','0 '),
    ('Ferrari','LaFerrari','2022','Hibrido','Varios colores disponibles','V12','Automática',130000.00,'FLF-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Ford','Mustang','2024','Deportivo','Varios colores disponibles','V8','Automática',498309.20,'FGMT-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Koenigsegg','Gamera','2022','Híbrido','Varios colores disponibles','HV8','Automática',2000000.00,'KGA-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('McLaren','750S','2024','Deportivo','Varios colores disponibles','V8','Automática',22500.02,'MCS-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Audi','R8','2023','Deportivo','Varios colores disponibles','V5,204','Automática',169013.95,'AUR-1234','Nuevo','Gasolina','Traccion 4 x 4','0'),
    ('Bugatti','Chiron','2022','Deportivo','Varios colores disponibles','8.0L W16','Automática',339000.00,'BGC-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Maserati','MC20','2022','Supercar','Varios colores disponibles','3.0L V6','Automática', 232429.95,'MST-1234', 'Nuevo', 'Gasolina', 'Tracción trasera', '0'),
    ('Porsche','911 Spyder','2022','Supercar','Varios colores disponibles','3.0L H6','Automática', 290000.00, 'PSE-1234', 'Nuevo', 'Gasolina', 'Tracción en las cuatro ruedas', '0');
   
   INSERT INTO Cliente(Nombre,Apellido,Telefono,Direccion)
   
   VALUES
     ('Juan', 'Pérez', '1235679', 'Av. Reforma 123, Ciudad de México, CDMX'),
     ('María', 'González', '1235680', 'Calle 5 de Mayo 456, Puebla, PUE'),
     ('José', 'Hernández', '1235681', 'Av. Juárez 789, Guadalajara, JAL'),
     ('Luis', 'Martínez', '1235682', 'Calle Hidalgo 101, Monterrey, NLE'),
     ('Ana', 'López', '1235683', 'Av. Revolución 202, Tijuana, BCN'),
     ('Marta', 'Sánchez', '1235684', 'Calle Insurgentes 303, Querétaro, QRO'),
     ('Lucía', 'Ramírez', '1235685', 'Av. Universidad 404, Toluca, MEX'),
     ('Daniel', 'Flores', '1235686', 'Calle Morelos 505, Mérida, YUC'),
     ('David', 'García', '1235687', 'Av. Chapultepec 606, Cancún, QROO'),
     ('Sofía', 'Vázquez', '1235688', 'Calle Allende 707, León, GTO');
   
INSERT INTO Empleado (Nombre, Direccion, Correo, Telefono) 
   VALUES 
('Juan Perez', 'Calle 123, Ciudad ABC', 'juan@example.com', '1234567890'),
('María López', 'Avenida XYZ, Pueblo DEF', 'maria@example.com', '0987654321'),
('Carlos García', 'Carrera 456, Villa GHI', 'carlos@example.com', '4567890123'),
('Ana Martínez', 'Plaza Principal, Ciudad JKL', 'ana@example.com', '7890123456'),
('Pedro Sanchez', 'Calle Mayor, Pueblo MNO', 'pedro@example.com', '2345678901'),
('Laura Rodríguez', 'Avenida Central, Villa PQR', 'laura@example.com', '5678901234'),
('David Fernandez', 'Paseo Marítimo, Ciudad STU', 'david@example.com', '8901234567'),
('Sofía Gómez', 'Callejón 789, Pueblo VWX', 'sofia@example.com', '9012345678'),
('Javier Ruiz', 'Avenida Sur, Villa YZA', 'javier@example.com', '3456789012'),
('Elena cruz', 'Calle Norte, Ciudad BCD', 'elena@example.com', '6789012345');


-- Seleccionar todas las filas de cada tabla
SELECT * FROM Concesionaria;
SELECT * FROM Autos;
SELECT * FROM Cliente;
SELECT * FROM Empleado;
SELECT * FROM Auto_Vendido;

-- Seleccionar columnas específicas de cada tabla
SELECT id_concesionaria, Direccion, Correo, Telefono, rol FROM Concesionaria;
SELECT Marca, Modelo, Año, Tipo, Color, Cilindraje, ID_Vehiculo, Transmision, Precio, Placa, Estado, Combustible, Traccion, Kilometraje FROM Autos;
SELECT CLIENTE_ID, Nombre, Apellido, Telefono FROM Cliente;
SELECT ID_Empleado, Nombre, Direccion, Correo, Telefono FROM Empleado;
SELECT venta_id, auto_id, id_propietario, id_concesionaria, ID_Empleado, Fecha_venta, Precio_venta, Metodo_pago FROM Auto_Vendido;

-- Seleccionar registros con condiciones específicas
SELECT Nombre, Apellido FROM Cliente WHERE Apellido = 'Doe';

-- Ordenar registros
SELECT * FROM Autos ORDER BY Precio ASC;
SELECT * FROM Cliente ORDER BY Nombre DESC;

-- Contar registros en cada tabla
SELECT COUNT(*) FROM Concesionaria;
SELECT COUNT(*) FROM Autos;
SELECT COUNT(*) FROM Cliente;
SELECT COUNT(*) FROM Empleado;
SELECT COUNT(*) FROM Auto_Vendido;

-- Sumar valores en columnas específicas
SELECT SUM(Precio) FROM Autos;
SELECT SUM(Kilometraje) FROM Autos;

-- Obtener valores máximo y mínimo en columnas específicas
SELECT MAX(Precio), MIN(Precio) FROM Autos;
SELECT MAX(Kilometraje), MIN(Kilometraje) FROM Autos;

-- Inner joins entre tablas
SELECT Concesionaria.id_concesionaria, Empleado.ID_Empleado
FROM Concesionaria
INNER JOIN Empleado ON Concesionaria.id_concesionaria = Empleado.ID_Empleado;

SELECT Auto_Vendido.venta_id, Autos.ID_Vehiculo
FROM Auto_Vendido
INNER JOIN Autos ON Auto_Vendido.auto_id = Autos.ID_Vehiculo;

-- Joins con condiciones específicas
SELECT c.Nombre AS Cliente, a.Marca AS Auto
FROM Cliente c
JOIN Auto_Vendido av ON c.CLIENTE_ID = av.id_propietario
JOIN Autos a ON av.auto_id = a.ID_Vehiculo
WHERE a.Estado = 'Nuevo';

SELECT e.Nombre AS Empleado, c.Direccion AS Concesionaria
FROM Empleado e
JOIN Concesionaria c ON e.ID_Empleado = c.id_concesionaria
WHERE e.Correo IS NOT NULL;

-- Subconsultas
SELECT c.Nombre AS Cliente, c.Telefono
FROM Cliente c
WHERE c.Telefono > (
    SELECT AVG(Telefono) FROM Cliente WHERE Apellido = c.Apellido
);

SELECT a.Marca AS Auto, a.Precio
FROM Autos a
WHERE a.Precio = (
    SELECT MAX(Precio) FROM Autos WHERE Año = 2023
);

-- Agrupar resultados
SELECT id_concesionaria, AVG(Precio) AS Precio_Medio
FROM Autos
GROUP BY id_concesionaria;

-- Filtrar por año específico
SELECT Marca, Modelo, Año
FROM Autos
WHERE YEAR(Año) = 2023;

-- Unión de resultados
SELECT Nombre, 'Cliente' AS Tipo
FROM Cliente
UNION
SELECT Nombre, 'Empleado' AS Tipo
FROM Empleado;

-- Filtrar por patrón de dirección
SELECT Marca, Direccion
FROM Autos
WHERE Direccion LIKE '%Calle%';

-- Subconsultas NOT EXISTS
SELECT Nombre
FROM Empleado e
WHERE NOT EXISTS (
    SELECT 1 FROM Auto_Vendido WHERE ID_Empleado = e.ID_Empleado
);

-- Subconsultas EXISTS
SELECT Direccion
FROM Concesionaria c
WHERE EXISTS (
    SELECT 1 FROM Autos WHERE id_concesionaria = c.id_concesionaria
);

-- Paginación de resultados
SELECT Nombre, Apellido
FROM Cliente
ORDER BY Nombre DESC
LIMIT 10 OFFSET 10;
