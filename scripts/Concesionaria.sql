create database consecionaria;

create table if not exists Consecionaria( 
id_consecionaria int not null auto_increment,
Dirección VARCHAR (150) NOT NULL,
Correo VARCHAR (50) NOT NULL,
Telefono CHAR (13),
rol ENUM('admin', 'usuario','reporter'),
PRIMARY KEY(id_consecionaria)
);

CREATE TABLE Autos (
    Marca VARCHAR(30) NOT NULL,
    Modelo VARCHAR(30) NOT NULL,
    Año YEAR,
    Tipo VARCHAR(30) NOT NULL,
    Color VARCHAR(30) NOT NULL,
    Cilindraje VARCHAR(30) NOT NULL,
    ID_Vehiculo VARCHAR(30) NOT NULL,
    Transmisión VARCHAR(30) NOT NULL,
    Precio DECIMAL(9,2),
    Placa VARCHAR(10) NOT NULL,
    Estado VARCHAR(10) NOT NULL,
    Combustible VARCHAR(10) NOT NULL,
    Tracción VARCHAR(10) NOT NULL,
    Kilometraje INT,
    PRIMARY KEY (ID_Vehiculo)
);

CREATE TABLE Cliente (
    CLIENTE_ID INT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Telefono CHAR(10) NOT NULL,
    PRIMARY KEY (CLIENTE_ID)
);

CREATE TABLE Empleado (
    ID_Empleado INT NOT NULL,
    Nombre VARCHAR(30) NOT NULL,
    Direccion VARCHAR(100),
    Correo VARCHAR(50),
    Telefono CHAR(10),
    PRIMARY KEY (ID_Empleado)
);
CREATE TABLE Auto_Vendido (
    venta_id INT NOT NULL,
    auto_id VARCHAR(30) NOT NULL,
    id_propietario INT NOT NULL,
    id_concesionaria INT,
    ID_Empleado INT NOT NULL,
    Fecha_venta DATE,
    Precio_venta DECIMAL(9,2),
    Metodo_pago VARCHAR(30),
    PRIMARY KEY (venta_id),
    FOREIGN KEY (id_concesionaria) REFERENCES Consecionaria(id_consecionaria),
    FOREIGN KEY (auto_id) REFERENCES Autos(ID_Vehiculo),
    FOREIGN KEY (id_propietario) REFERENCES Cliente(CLIENTE_ID),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado)
);

INSERT INTO Consecionaria(
Dirección,
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

INSERT INTO Autos(
    Marca,
    Modelo,
    Año,
    Tipo,
    Color,
    Cilindraje,
    ID_Vehiculo,
    Transmisión,
    Precio,
    Placa,
    Estado,
    Combustible,
    Tracción,
    Kilometraje
    )
    
    VALUES
    ('Lamborghini','Huracan','2022','Deportivo','Varios colores disponibles','V10','LBH2022HRCN','Automatica','338.577 €','LMH-1234','Nuevo','Gasolina','En las cuatro ruedas','0 '),
    ('Ford','F_150','2024','Camioneta','Varios colores disponibles','V6','FRD2024F150','Automática','$85,450','XYZ-5678','Nuevo','Gasolina','En las cuatro ruedas','0 '),
    ('Ferrari','LaFerrari','2022','Hibrido','Varios colores disponibles','V12 de 6262 CC','FRR2013LFRR','Automática','1.3 millones de €','FLF-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Ford','Mustang','2024','Deportivo','Varios colores disponibles','V8','FRD2024MSTG','Automática','$30,920','FGMT-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Koenigsegg','Gamera','2022','Híbrido','Varios colores disponibles','HV8','KNG2022GMR','Automática','2 millones de €','KGA-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('McLaren','750S','2024','Deportivo','Varios colores disponibles','V8','MCL2024750S','Automática','US$225,0002','MCS-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Audi','R8','2023','Deportivo','Varios colores disponibles','5.2 L (5,204 cm3)','AUD2023R8','Automática de doble embrague de 7 velocidades',' $161,395','AUR-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Bugatti','Chiron','2022','Deportivo','Varios colores disponibles','8.0 litros y W16','BGT2022CHR','Automática','$3,300,000','BGC-1234','Nuevo','Gasolina','Tracción en las cuatro ruedas','0'),
    ('Maserati', 'MC20', '2022', 'Supercar', 'Varios colores disponibles', '3.0L V6', 'MSR2022MC', 'Automática', '$242,995', 'MST-1234', 'Nuevo', 'Gasolina', 'Tracción trasera', '0'),
    ('Porsche', '911 Spyder', '2022', 'Supercar', 'Varios colores disponibles', '3.0L H6', 'PSE911SP', 'Automática', '$290,000', 'PSE-1234', 'Nuevo', 'Gasolina', 'Tracción en las cuatro ruedas', '0');
   
   INSERT INTO Cliente(
   ID_Cliente,
   Nombre,
   Apellido,
   Telefono
   )
   
   VALUES
   ('12346', 'John', 'Doe', '1235679'),
   ('12347', 'Jane', 'Smith', '1235680'),
   ('12348', 'Robert', 'Johnson', '1235681'),
   ('12349', 'Michael', 'Williams', '1235682'),
   ('12350', 'Sarah', 'Jones', '1235683'),
   ('12351', 'Emma', 'Brown', '1235684'),
   ('12352', 'Emily', 'Davis', '1235685'),
   ('12353', 'Daniel', 'Miller', '1235686'),
   ('12354', 'David', 'Wilson', '1235687'),
   ('12355', 'Olivia', 'Moore', '1235688')
   
   

   
   
   