# Sistema de Gestión de Concesionario de Autos

### Necesidad
 Se requiere desarrollar un sistema para gestionar la información de un concesionario de autos. El sistema debe permitir registrar, actualizar y consultar la información de las categorías de carros, los autos disponibles, los registros de compra de autos por parte de los clientes y la información de los clientes.

#### Gestión de Categorías de Carros

- El sistema debe permitir registrar la siguiente información para cada categoría de carros:
  - Nombre de la categoría
  - Descripción breve

#### Gestión de Registros de Compra (AutosPersona)

- El sistema debe permitir registrar la siguiente información para cada venta de auto:
  - Información del auto vendido
  - Persona que realizó la compra
  - Fecha de la compra

### Requerimientos Funcionales

#### RF1: Gestión de Categorías de Carros

- **Descripción**: El sistema debe permitir el registro de la información de cada categoría de carros.
- **Entradas**: Nombre de la categoría y descripción breve.
- **Salidas**: Confirmación del registro exitoso.

#### RF2: Gestión de Autos

- **Descripción**: El sistema debe permitir el registro de la información detallada de cada auto.
- **Entradas**: Modelo, marca, año de fabricación, color, precio y categoría.
- **Salidas**: Confirmación del registro exitoso.

### RF3: Gestión de Registros de Compra (AutosPersona)

- **Descripción**: El sistema debe permitir el registro de la información de cada venta de auto.
- **Entradas**: Información del auto vendido, persona que realizó la compra y fecha de la compra.
- **Salidas**: Confirmación del registro exitoso.

### RF4: Gestión de Clientes (Persona)

- **Descripción**: El sistema debe permitir el registro de la información personal de cada cliente.
- **Entradas**: Nombre, apellido, dirección, teléfono, correo electrónico y fecha de nacimiento.
- **Salidas**: Confirmación del registro exitoso.

### 3.2 Requerimientos No Funcionales

#### RNF1: Usabilidad

- **Descripción**: El sistema debe ser intuitivo y fácil de usar.
- **Criterios de Cumplimiento**: El sistema debe ser usable por personal con conocimientos básicos en informática.

#### RNF2: Seguridad

- **Descripción**: El sistema debe garantizar la seguridad de la información.
- **Criterios de Cumplimiento**: El acceso a la información debe estar restringido a usuarios autorizados.

# Base de Datos

## Tabla: CategoriaCarros

| Atributo          | Tipo de dato    | Descripción                                          | Clave            |
|-------------------|-----------------|------------------------------------------------------|------------------|
| idCategoria       | INT             | Identificador único de la categoría de carros        | Primaria         |
| nombreCategoria   | VARCHAR(50)     | Nombre de la categoría de carros                     |                  |
| descripcion       | VARCHAR(255)    | Descripción breve de la categoría de carros          |                  |

## Tabla: Autos

| Atributo          | Tipo de dato    | Descripción                                          | Clave            |
|-------------------|-----------------|------------------------------------------------------|------------------|
| idAuto            | INT             | Identificador único del auto                         | Primaria         |
| modelo            | VARCHAR(50)     | Modelo del auto                                      |                  |
| marca             | VARCHAR(50)     | Marca del auto                                       |                  |
| añoFabricacion    | INT             | Año de fabricación del auto                          |                  |
| color             | VARCHAR(50)     | Color del auto                                       |                  |
| precio            | DECIMAL(10, 2)  | Precio del auto                                      |                  |
| idCategoria       | INT             | Identificador de la categoría a la que pertenece     | Foránea          |

## Tabla: AutosPersona

| Atributo          | Tipo de dato    | Descripción                                          | Clave            |
|-------------------|-----------------|------------------------------------------------------|------------------|
| idAutoPersona     | INT             | Identificador único del registro de venta            | Primaria         |
| idAuto            | INT             | Identificador del auto vendido                       | Foránea          |
| idPersona         | INT             | Identificador de la persona que realizó la compra    | Foránea          |
| fechaCompra       | DATE            | Fecha de la compra                                   |                  |

## Tabla: Persona

| Atributo          | Tipo de dato    | Descripción                                          | Clave            |
|-------------------|-----------------|------------------------------------------------------|------------------|
| idPersona         | INT             | Identificador único de la persona                    | Primaria         |
| nombre            | VARCHAR(50)     | Nombre de la persona                                 |                  |
| apellido          | VARCHAR(50)     | Apellido de la persona                               |                  |
| direccion         | VARCHAR(255)    | Dirección de la persona                              |                  |
| telefono          | VARCHAR(15)     | Teléfono de la persona                               |                  |
| correoElectronico | VARCHAR(100)    | Correo electrónico de la persona                     |                  |
| fechaNacimiento   | DATE            | Fecha de nacimiento de la persona                    |                  |

## Diagrama de la Base de Datos

> Ver
![Modelo relacional del ejercicio](bd/MR.png)

# Base de Datos - Normalización 3NF

## Tabla: CategoriaCarros

| idCategoria | nombreCategoria  | descripcion                                    |
|-------------|------------------|------------------------------------------------|
| 1           | Sedán            | Autos de cuatro puertas con un maletero amplio |
| 2           | SUV              | Vehículos deportivos utilitarios               |
| 3           | Coupé            | Autos de dos puertas con diseño deportivo      |
| 4           | Hatchback        | Autos compactos con portón trasero             |

## Tabla: Autos

| idAuto | modelo   | marca       | añoFabricacion | color  | precio     | idCategoria |
|--------|----------|-------------|----------------|--------|------------|-------------|
| 1      | Corolla  | Toyota      | 2020           | Gris   | 25000.00   | 1           |
| 2      | Civic    | Honda       | 2021           | Blanco | 28000.00   | 1           |
| 3      | CR-V     | Honda       | 2022           | Rojo   | 35000.00   | 2           |
| 4      | X5       | BMW         | 2020           | Negro  | 60000.00   | 2           |
| 5      | Mustang  | Ford        | 2021           | Azul   | 45000.00   | 3           |
| 6      | Golf     | Volkswagen  | 2022           | Verde  | 22000.00   | 4           |

## Tabla: Persona

| idPersona | nombre | apellido  | direccion   | telefono  | correoElectronico          | fechaNacimiento |
|-----------|--------|-----------|-------------|-----------|----------------------------|-----------------|
| 1         | Juan   | Pérez     | Calle 123   | 123456789 | juan.perez@example.com     | 1990-05-15      |
| 2         | María  | González  | Avenida 456 | 987654321 | maria.gonzalez@example.com | 1985-07-20      |
| 3         | Carlos | Sánchez   | Calle 789   | 111222333 | carlos.sanchez@example.com | 1992-03-10      |

## Tabla: AutosPersona

| idAutoPersona | idAuto | idPersona | fechaCompra |
|----------------|--------|-----------|-------------|
| 1              | 1      | 1         | 2024-04-20  |
| 2              | 2      | 2         | 2024-04-21  |
| 3              | 3      | 3         | 2024-04-22  |
| 4              | 4      | 1         | 2024-04-23  |
| 5              | 5      | 2         | 2024-04-24  |
| 6              | 6      | 3         | 2024-04-25  |

# Script de Creación de Base de Datos

## Creación de Base de Datos: ConcesionarioAutos

```sql
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
```
# Ver planificación 
[Ver Aquí](https://trello.com/b/AxIfCas1/parcial)
