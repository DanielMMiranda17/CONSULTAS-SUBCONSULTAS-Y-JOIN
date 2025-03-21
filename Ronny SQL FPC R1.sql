-- Eliminamos la B.D si existe  
DROP DATABASE IF EXISTS Full_Paint_Cars;  

-- Creamos la base de datos  
CREATE DATABASE Full_Paint_Cars CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;  

-- Usamos la B.D  
USE Full_Paint_Cars;  

-- Creamos las tablas  

-- Tabla usuarios  
CREATE TABLE usuarios (   
    ID INT PRIMARY KEY AUTO_INCREMENT,  
    id_nombre VARCHAR(50) NOT NULL,  
    id_password VARCHAR(12) NOT NULL,  
    rol ENUM('cliente', 'empleado', 'administrador') NOT NULL  
);  

-- Tabla clientes  
CREATE TABLE clientes (  
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,  
    nombre_cliente VARCHAR(50) NOT NULL,  
    cedula_cliente INT NOT NULL,  
    telefono_cliente VARCHAR(10) NOT NULL,  
    telefono_alternativo_admin VARCHAR(10),  
    email_cliente VARCHAR(23) NOT NULL  
);  

-- Tabla empleados  
CREATE TABLE empleados (  
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,  
    nombre_empleado VARCHAR(50) NOT NULL,  
    cedula_empleado INT NOT NULL,  
    telefono_empleado VARCHAR(10) NOT NULL,  
    telefono_alternativo_admin VARCHAR(10),  
    email_empleado VARCHAR(23) NOT NULL   
);  

-- Tabla administradores  
CREATE TABLE administradores (  
    id_admin INT PRIMARY KEY AUTO_INCREMENT,  
    nombre_admin VARCHAR(50) NOT NULL,  
    cedula_admin INT NOT NULL,  
    telefono_admin VARCHAR(10) NOT NULL,  
    telefono_alternativo_admin VARCHAR(10),  
    email_admin VARCHAR(23) NOT NULL  
);  

-- Tabla automoviles  
CREATE TABLE automoviles (  
    id_automoviles INT PRIMARY KEY AUTO_INCREMENT,  
    select_automovil ENUM('Carro', 'Moto') NOT NULL,  
    placa_automovil VARCHAR(6) NOT NULL,  
    marca_automovil VARCHAR(13) NOT NULL,  
    modelo_automovil VARCHAR(23) NOT NULL,  
    cliente_duenio INT,  
    FOREIGN KEY (cliente_duenio) REFERENCES clientes(id_cliente)  
);  

-- Tabla cotizaciones  
CREATE TABLE cotizaciones (  
    id_cotizaciones INT PRIMARY KEY AUTO_INCREMENT,  
    nombre_cliente VARCHAR(50) NOT NULL,  
    servicio_a_realizar VARCHAR(26) NOT NULL,  
    descripcion_servicio_a_revisar TEXT NOT NULL,  
    fecha_a_realizar_servicio DATETIME,   
    precios INT,  
    servicios ENUM('Polichado', 'Pintura', 'Detailing', 'Latoneria', 'Porcelanizado', 'Lavado de tapiceria', 'Alistamiento Interno', 'otra opción'),  
    clientes_id INT,  
    FOREIGN KEY (clientes_id) REFERENCES clientes(id_cliente)  
);  

-- Tabla procesos  
CREATE TABLE procesos (  
    id_procesos INT PRIMARY KEY AUTO_INCREMENT,  
    servicios VARCHAR(20) NOT NULL,  
    fecha_inicio DATETIME NOT NULL,  
    fecha_proceso DATETIME NOT NULL,  
    fecha_entrega DATETIME NOT NULL,  
    costo_procesos INT NOT NULL,  
    id_cotizaciones INT,  
    id_empleados INT,  
    FOREIGN KEY (id_cotizaciones) REFERENCES cotizaciones(id_cotizaciones),  
    FOREIGN KEY (id_empleados) REFERENCES empleados(id_empleado)  
);