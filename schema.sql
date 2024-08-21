CREATE DATABASE tiendabi;

USE tiendabi;

CREATE TABLE `clientes` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Nombre` VARCHAR(100) NOT NULL,
    `Apellido` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `Telefono` VARCHAR(15) NOT NULL,
    `Direccion` TEXT NOT NULL,
    `Nacionalidad` VARCHAR(50) NOT NULL
);


CREATE TABLE `vendedores` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Nombre` VARCHAR(100) NOT NULL,
    `Apellido` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `Telefono` VARCHAR(15) NOT NULL,
    `Direccion` TEXT ,
    `Nacionalidad` VARCHAR(50) NOT NULL,
    `Salario` FLOAT (15),
    `Departamento` VARCHAR(20) NOT NULL
);

CREATE TABLE `productos` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `Nombre` VARCHAR(100) NOT NULL,
    `Precio` FLOAT(15) NOT NULL
);

CREATE TABLE `pedidos`(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `fecha` timestamp not null default current_timestamp,
    `cliente_id` INT NOT NULL,
    `vendedor_id` INT NOT NULL,
    foreign key (cliente_id) references clientes(id),
    foreign key (vendedor_id) references vendedores(id)
);

CREATE TABLE `pedidos_productos`(
    `pedidos_id` INT NOT NULL,
    `productos_id` INT NOT NULL,
    `cantidad` INT NOT NULL DEFAULT 1,
    FOREIGN KEY (pedidos_id) REFERENCES pedidos(id),
    FOREIGN KEY (productos_id) REFERENCES productos(id)
);


INSERT INTO `clientes` ( `Nombre`, `Apellido`, `email`, `Telefono`, `Direccion`, `Nacionalidad`) 
VALUES 
('Héctor ', 'Margall Gusa', 'fdhc3a9ctor3@yopmail.com', '+52-442-2171777', 'Bulevar Stratulat No. 326', 'Mexico'),
('Michel Jorge', 'González', 'ifmichel+jorge5@yopmail.com', '+52-757-2171118', 'Calle Santo del Savchuk No. 458', 'Mexico' ),
('Juan', 'Pérez', 'juan.perez@gmail.com', '5551234567', 'Calle Falsa 123, Ciudad de México, CDMX', 'Mexicana'),
('María', 'González', 'maria.gonzalez@hotmail.com', '5559876543', 'Av. Revolución 456, Guadalajara, JAL', 'Mexicana'),
('Carlos', 'López', 'carlos.lopez@yahoo.com', '5553456789', 'Calle de la Amargura 789, Monterrey, NL', 'Mexicana');


INSERT INTO `vendedores` ( `Nombre`, `Apellido`, `email`, `Telefono`, `Direccion`, `Nacionalidad`, `Salario`, `Departamento`)
VALUES
('Ana', 'Martínez', 'ana.martinez@empresa.com', '+52-555-1234567', 'Av. Insurgentes Sur 1234, Ciudad de México, CDMX', 'Mexicana', 15000, 'Ventas'),
('Luis', 'Hernández', 'luis.hernandez@empresa.com', '+52-555-7654321', 'Calle Reforma 5678, Ciudad de México, CDMX', 'Mexicana', 18000, 'Ventas'),
('Sofía', 'Ramírez', 'sofia.ramirez@empresa.com', '+52-555-2345678', 'Av. Juárez 910, Guadalajara, JAL', 'Mexicana', 16000, 'Ventas'),
('Miguel', 'Torres', 'miguel.torres@empresa.com', '+52-555-8765432', 'Calle Hidalgo 112, Monterrey, NL', 'Mexicana', 17000, 'Ventas'),
('Laura', 'Gómez', 'laura.gomez@empresa.com', '+52-555-3456789', 'Av. Universidad 314, Puebla, PUE', 'Mexicana', 15500, 'Ventas');

INSERT INTO `productos` ( `Nombre`, `Precio`)
VALUES
('Laptop', 15000),
('Smartphone', 8000),
('Tablet', 5000),
('Smartwatch', 3000),
('Audífonos', 2000);

INSERT INTO `pedidos` ( `cliente_id`, `vendedor_id`)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO `pedidos_productos` ( `pedidos_id`, `productos_id`, `cantidad`)
VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 2, 3),
(4, 5, 2);




