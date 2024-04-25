CREATE DATABASE ConcesionarioAutos;
USE ConcesionarioAutos;

CREATE TABLE CategoriaCarros (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombreCategoria VARCHAR(50),
    descripcion VARCHAR(255)
);

INSERT INTO CategoriaCarros (nombreCategoria, descripcion) VALUES
('Sedán', 'Autos de cuatro puertas con un maletero amplio'),
('SUV', 'Vehículos deportivos utilitarios'),
('Coupé', 'Autos de dos puertas con diseño deportivo'),
('Hatchback', 'Autos compactos con portón trasero');

CREATE TABLE Autos (
    idAuto INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(50),
    marca VARCHAR(50),
    añoFabricacion INT,
    color VARCHAR(50),
    precio DECIMAL(10, 2),
    idCategoria INT,
    FOREIGN KEY (idCategoria) REFERENCES CategoriaCarros(idCategoria)
);

INSERT INTO Autos (modelo, marca, añoFabricacion, color, precio, idCategoria) VALUES
('Corolla', 'Toyota', 2020, 'Gris', 25000.00, 1),
('Civic', 'Honda', 2021, 'Blanco', 28000.00, 1),
('CR-V', 'Honda', 2022, 'Rojo', 35000.00, 2),
('X5', 'BMW', 2020, 'Negro', 60000.00, 2),
('Mustang', 'Ford', 2021, 'Azul', 45000.00, 3),
('Golf', 'Volkswagen', 2022, 'Verde', 22000.00, 4);

CREATE TABLE Persona (
    idPersona INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    correoElectronico VARCHAR(100),
    fechaNacimiento DATE
);

INSERT INTO Persona (nombre, apellido, direccion, telefono, correoElectronico, fechaNacimiento) VALUES
('Juan', 'Pérez', 'Calle 123', '123456789', 'juan.perez@example.com', '1990-05-15'),
('María', 'González', 'Avenida 456', '987654321', 'maria.gonzalez@example.com', '1985-07-20'),
('Carlos', 'Sánchez', 'Calle 789', '111222333', 'carlos.sanchez@example.com', '1992-03-10');

CREATE TABLE AutosPersona (
    idAutoPersona INT PRIMARY KEY AUTO_INCREMENT,
    idAuto INT,
    idPersona INT,
    fechaCompra DATE,
    FOREIGN KEY (idAuto) REFERENCES Autos(idAuto),
    FOREIGN KEY (idPersona) REFERENCES Persona(idPersona)
);

INSERT INTO AutosPersona (idAuto, idPersona, fechaCompra) VALUES
(1, 1, '2024-04-20'),
(2, 2, '2024-04-21'),
(3, 3, '2024-04-22'),
(4, 1, '2024-04-23'),
(5, 2, '2024-04-24'),
(6, 3, '2024-04-25');
