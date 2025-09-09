CREATE DATABASE restaurante;

CREATE TABLE menu(
	id INT PRIMARY KEY AUTO_INCREMENT,
	producto VARCHAR (50) NOT NULL,
    precio DECIMAL (10,2) NOT NULL,
    stock INT,
    tipo varchar (50),
    foto varchar (50)
);

CREATE TABLE mesas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    reservado BOOLEAN
);

CREATE TABLE promociones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descuento INT
);

CREATE TABLE usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (50),
    nickname VARCHAR (50) not null,
    contraseña VARCHAR(50),
    correo VARCHAR (255)
);

CREATE TABLE venta (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    fecha DATE,
    total DECIMAL (10,2) ,
    horario TIME,
    cantidad INT,
    comensales INT,
    estado VARCHAR (50)
);

INSERT INTO menu (producto, precio, stock, tipo, foto) 
VALUES ("fideos", 2000.30, 10, "pastas", "fid.jpg");

INSERT INTO menu (producto, precio, stock, tipo, foto)
VALUES ("pizza", 7800.00, 5, "harinas", "pizza.jpg"),
    ("agnelotti", 7000.25, 10, "pasta", "agnelotti.jpg"),
    ("ravioles", 5000.25, 15, "pasta", "ravioles.jpg"),
    ("coca-cola", 1600.80,10, "gaseosa", "coca.jpg"),
    ("pepsi", 1400.86,20, "gaseosa", "pepsi.jpg"),
    ("asado", 10000.00,30, "carne", "asado.jpg"),
    ("pollo", 9999.99,72, "pollo", "pollo.jpg"),
    ("helado", 4000.10,1, "postre", "helado.jpg"),
    ("flan", 3200.50,200, "postre", "flan.jpg"),
    ("cerveza", 4000.00,15, "bebida", "cerveza.jpg"),
    ("caipirinha", 4500.00,25, "trago", "caipirinha.jpg"),
    ("agua mineral", 2000.00,31, "agua", "agua.jpg"),
    ("galleta de la fortuna", 900.80, 44, "aperitivo", "galleta.jpg");

    INSERT INTO menu (producto, precio, stock, tipo, foto)
VALUES ("tortilla", 3500.45, 5, "lacteo", "tortilla.jpg"),
	("sprite", 1500.45, 10, "gaseosa", "sprite.jpg"),
    ("7up", 1700.00, 19, "gaseosa", "7up.jpg"),
    ("cafe", 2500.40, 15, "infusion", "cafe.jpg"),
    ("te", 2135.30, 10, "infusion", "te.jpg"),
    ("medialuna", 650.00, 9, "harinas", "fac.jpg");

    INSERT INTO mesas ( numero , reservado )
VALUES ( 3 , true) ,
( 5 , false ) ,
( 4 , true ) ,
( 2 , false ) ,
( 1 , true  ) ;

INSERT INTO promociones ( descuento )
VALUES (25),
(15),
(35),
(20),
(60);

INSERT INTO usuarios ( nombre, nickname, contraseña, correo )
VALUES ("diego", "yomann", "dinosaurio1525;", "usuario@gmail.com"),
("pepe", "pepito25", "pepitoelmejor32", "usuario2@gmail.com"),
("lucia", "lucianaalgo", "sisicontraseña321", "usuario3@gmail.com"),
("ignacio", "ingacio86", "contraseña099", "usuario4@gmail.com"),
("pepa", "pepapig", "nosequeponer", "usuario5@gmail.com");

INSERT INTO `venta` (`fecha`, `total`, `horario`, `cantidad`, `comensales`, `estado`) 
VALUES ('2025-01-10', '25000', '16:17:16', '2', '2', 'pagado con tarjeta'),
('2025-01-10', '30000', '10:00:00', '3', '3', 'pagado con efectivo');