USE FPC;

-- 1 
INSERT INTO Roles (Nombre) VALUES 
('admin'),
('Empleado'),
('Usuario');

-- 2
INSERT INTO Administradores (Nombre) VALUES 
('Admin 1'),
('Admin 2');

-- 3
INSERT INTO Clientes (Nombre, CC, Dirección, Correo, Contraseña) VALUES
('Carlos Pérez', '123456789', 'Calle Ficticia 123', 'carlos@ejemplo.com', 'pass123'),
('María López', '987654321', 'Calle Real 456', 'maria@ejemplo.com', '123pass'),
('José García', '111223345', 'Avenida Siempre Viva 789', 'jose@ejemplo.com', 'josepass'),
('Ana Martínez', '222233344', 'Calle del Sol 101', 'ana@ejemplo.com', 'anapass'),
('Luis Fernández', '333344455', 'Calle del Mar 202', 'luis@ejemplo.com', 'luispass'),
('Isabel Ramírez', '444455566', 'Calle de la Luna 303', 'isabel@ejemplo.com', 'isabelpass'),
('Javier Gómez', '555566677', 'Calle de la Estrella 404', 'javier@ejemplo.com', 'javierpass'),
('Sofía Sánchez', '666677788', 'Calle del Viento 505', 'sofia@ejemplo.com', 'sofiapass'),
('Miguel Rodríguez', '777788899', 'Calle de la Tierra 606', 'miguel@ejemplo.com', 'miguelpass'),
('Lucía Díaz', '888899900', 'Calle del Agua 707', 'lucia@ejemplo.com', 'luciapass'),
('Pedro Martínez', '112233445', 'Calle de los Pinos 123', 'pedro@ejemplo.com', 'pedropass'),
('Laura González', '223344556', 'Calle del Roble 456', 'laura@ejemplo.com', 'laurapass'),
('Ricardo Gómez', '334455667', 'Calle del Sol 789', 'ricardo@ejemplo.com', 'ricardopass'),
('Patricia López', '445566778', 'Avenida de la Paz 101', 'patricia@ejemplo.com', 'patriciapass'),
('José Fernández', '556677889', 'Calle de la Luna 202', 'josef@ejemplo.com', 'josefpass'),
('Mariana Díaz', '667788991', 'Calle Real 303', 'mariana@ejemplo.com', 'marianapass'),
('Samuel Sánchez', '778899001', 'Calle del Viento 404', 'samuel@ejemplo.com', 'samuelpass'),
('Beatriz Ramírez', '889900112', 'Avenida Siempre Viva 505', 'beatriz@ejemplo.com', 'beatrizpass'),
('Carlos Gómez', '990011223', 'Calle de la Estrella 606', 'carlosg@ejemplo.com', 'carlosgpass'),
('Marta González', '101112233', 'Calle de la Tierra 707', 'marta@ejemplo.com', 'martapass'),
('Juan Pérez', '111223446', 'Calle del Sol 888', 'juan@ejemplo.com', 'juanpass'),
('Ana López', '222233455', 'Calle Real 999', 'ana.lopez@ejemplo.com', 'analopass'),
('David García', '333344566', 'Calle del Mar 444', 'david@ejemplo.com', 'davidpass'),
('Carla Martínez', '444455677', 'Calle Luna 222', 'carla@ejemplo.com', 'carlapass'),
('José Rodríguez', '555566788', 'Avenida de la Paz 333', 'jose.r@ejemplo.com', 'josepass2'),
('Antonio Sánchez', '666677799', 'Calle del Viento 888', 'antonio@ejemplo.com', 'antonio123'),
('Sergio Ramírez', '777788900', 'Calle del Agua 909', 'sergio@ejemplo.com', 'sergiopass'),
('Rosa Díaz', '888899011', 'Calle de los Pinos 444', 'rosa@ejemplo.com', 'rosapass'),
('Lidia González', '999900122', 'Avenida Siempre Viva 555', 'lidia@ejemplo.com', 'lidiapass'),
('Elena Morales', '100011223', 'Calle del Sol 123', 'elena@ejemplo.com', 'elenapass'),
('Ricardo Martínez', '200022334', 'Avenida de la Luna 456', 'ricardo.m@ejemplo.com', 'ricardopass2'),
('Oscar Gómez', '300033445', 'Calle Real 789', 'oscar@ejemplo.com', 'oscarpass'),
('Nuria Pérez', '400044556', 'Calle del Mar 987', 'nuria@ejemplo.com', 'nuriapass'),
('Ramón López', '500055667', 'Calle de la Estrella 123', 'ramon@ejemplo.com', 'ramonpass'),
('Beatriz Sánchez', '600066778', 'Avenida Siempre Viva 987', 'beatriz.s@ejemplo.com', 'beatrizpass2'),
('Antonio Fernández', '700077889', 'Calle del Viento 234', 'antonio.f@ejemplo.com', 'antoniofpass'),
('Julia Rodríguez', '800088990', 'Calle de la Luna 567', 'julia@ejemplo.com', 'juliapass'),
('Álvaro Díaz', '900099001', 'Calle del Agua 890', 'alvaro@ejemplo.com', 'alvaropass'),
('Cristina González', '101010102', 'Calle del Roble 234', 'cristina@ejemplo.com', 'cristinapass');


-- 4
INSERT INTO Usuarios (Cliente_ID, Rol_ID) VALUES 
(1, 1), (2, 2), (3, 3), (4, 2), (5, 3),
(6, 1), (7, 2), (8, 3), (9, 1), (10, 2),
(11, 3), (12, 2), (13, 3), (14, 1), (15, 2),
(16, 3), (17, 1), (18, 2), (19, 3), (20, 2),
(21, 3), (22, 1), (23, 2), (24, 3), (25, 1),
(26, 2), (27, 3), (28, 1), (29, 2),
(30, 3), (31, 1), (32, 2), (33, 3), (34, 1),
(35, 2), (36, 3), (37, 1), (38, 2), (39, 3);


-- 5
INSERT INTO HistorialClientes (Cliente_ID, Entrada, Salida) VALUES
(1, '2025-03-01 08:00:00', '2025-03-01 18:00:00'),
(2, '2025-03-02 08:00:00', '2025-03-02 18:00:00'),
(3, '2025-03-03 08:00:00', '2025-03-03 18:00:00'),
(4, '2025-03-04 08:00:00', '2025-03-04 18:00:00'),
(5, '2025-03-05 08:00:00', '2025-03-05 18:00:00'),
(6, '2025-03-06 08:00:00', '2025-03-06 18:00:00'),
(7, '2025-03-07 08:00:00', '2025-03-07 18:00:00'),
(8, '2025-03-08 08:00:00', '2025-03-08 18:00:00'),
(9, '2025-03-09 08:00:00', '2025-03-09 18:00:00'),
(10, '2025-03-10 08:00:00', '2025-03-10 18:00:00'),
(11, '2025-03-11 08:00:00', '2025-03-11 18:00:00'),
(12, '2025-03-12 08:00:00', '2025-03-12 18:00:00'),
(13, '2025-03-13 08:00:00', '2025-03-13 18:00:00'),
(14, '2025-03-14 08:00:00', '2025-03-14 18:00:00'),
(15, '2025-03-15 08:00:00', '2025-03-15 18:00:00'),
(16, '2025-03-16 08:00:00', '2025-03-16 18:00:00'),
(17, '2025-03-17 08:00:00', '2025-03-17 18:00:00'),
(18, '2025-03-18 08:00:00', '2025-03-18 18:00:00'),
(19, '2025-03-19 08:00:00', '2025-03-19 18:00:00'),
(20, '2025-03-20 08:00:00', '2025-03-20 18:00:00'),
(21, '2025-03-21 08:00:00', '2025-03-21 18:00:00'),
(22, '2025-03-22 08:00:00', '2025-03-22 18:00:00'),
(23, '2025-03-23 08:00:00', '2025-03-23 18:00:00'),
(24, '2025-03-24 08:00:00', '2025-03-24 18:00:00'),
(25, '2025-03-25 08:00:00', '2025-03-25 18:00:00'),
(26, '2025-03-26 08:00:00', '2025-03-26 18:00:00'),
(27, '2025-03-27 08:00:00', '2025-03-27 18:00:00'),
(28, '2025-03-28 08:00:00', '2025-03-28 18:00:00'),
(29, '2025-03-29 08:00:00', '2025-03-29 18:00:00'),
(30, '2025-03-30 08:00:00', '2025-03-30 18:00:00'),
(31, '2025-03-31 08:00:00', '2025-03-31 18:00:00'),
(32, '2025-04-01 08:00:00', '2025-04-01 18:00:00'),
(33, '2025-04-02 08:00:00', '2025-04-02 18:00:00'),
(34, '2025-04-03 08:00:00', '2025-04-03 18:00:00'),
(35, '2025-04-04 08:00:00', '2025-04-04 18:00:00'),
(36, '2025-04-05 08:00:00', '2025-04-05 18:00:00'),
(37, '2025-04-06 08:00:00', '2025-04-06 18:00:00'),
(38, '2025-04-07 08:00:00', '2025-04-07 18:00:00'),
(39, '2025-04-08 08:00:00', '2025-04-08 18:00:00');


-- 6
INSERT INTO Cotizaciones (Cliente_ID, Fecha, ServicioRealizado, Precio) VALUES
(1, '2025-03-01', 'Cambio de aceite', 50.00),
(2, '2025-03-02', 'Revisión general', 100.00),
(3, '2025-03-03', 'Cambio de frenos', 150.00),
(4, '2025-03-04', 'Revisión de suspensión', 200.00),
(5, '2025-03-05', 'Cambio de llantas', 250.00),
(6, '2025-03-06', 'Cambio de batería', 75.00),
(7, '2025-03-07', 'Revisión de motor', 300.00),
(8, '2025-03-08', 'Cambio de luces', 30.00),
(9, '2025-03-09', 'Revisión de frenos', 120.00),
(10, '2025-03-10', 'Alineación de ruedas', 90.00),
(11, '2025-03-11', 'Cambio de aceite y filtro', 80.00),
(12, '2025-03-12', 'Revisión general de sistema eléctrico', 160.00),
(13, '2025-03-13', 'Reemplazo de alternador', 220.00),
(14, '2025-03-14', 'Inspección de frenos', 110.00),
(15, '2025-03-15', 'Reemplazo de batería', 75.00),
(16, '2025-03-16', 'Cambio de filtros', 50.00),
(17, '2025-03-17', 'Revisión de suspensión y frenos', 180.00),
(18, '2025-03-18', 'Cambio de pastillas de freno', 120.00),
(19, '2025-03-19', 'Revisión de luces y frenos', 150.00),
(20, '2025-03-20', 'Cambio de correa', 60.00),
(21, '2025-03-21', 'Revisión de motor y batería', 280.00),
(22, '2025-03-22', 'Inspección general', 100.00),
(23, '2025-03-23', 'Cambio de aceite', 55.00),
(24, '2025-03-24', 'Alineación y balanceo', 70.00),
(25, '2025-03-25', 'Revisión de suspensión', 120.00),
(26, '2025-03-26', 'Cambio de bujías', 80.00),
(27, '2025-03-27', 'Cambio de aceite y revisión general', 150.00),
(28, '2025-03-28', 'Revisión de motor', 200.00),
(29, '2025-03-29', 'Reemplazo de frenos', 180.00),
(30, '2025-03-30', 'Inspección de frenos y suspensión', 170.00),
(31, '2025-03-31', 'Cambio de aceite y revisión general', 120.00),
(32, '2025-04-01', 'Reemplazo de bujías y revisión de motor', 250.00),
(33, '2025-04-02', 'Revisión de batería', 60.00),
(34, '2025-04-03', 'Cambio de frenos y suspensión', 200.00),
(35, '2025-04-04', 'Cambio de aceite y filtro', 85.00),
(36, '2025-04-05', 'Revisión general de motor', 180.00),
(37, '2025-04-06', 'Cambio de pastillas de freno', 100.00),
(38, '2025-04-07', 'Inspección general de suspensión', 110.00),
(39, '2025-04-08', 'Alineación y balanceo', 75.00);


-- 7
INSERT INTO Procesos (Cotizacion_ID, Fecha_Registro, Tipo_Proceso) VALUES
(1, '2025-03-01 08:30:00', 'Instalación'),
(2, '2025-03-02 09:15:00', 'Reparación'),
(3, '2025-03-03 10:00:00', 'Mantenimiento'),
(4, '2025-03-04 11:45:00', 'Instalación'),
(5, '2025-03-05 12:30:00', 'Reparación'),
(6, '2025-03-06 13:30:00', 'Mantenimiento'),
(7, '2025-03-07 14:00:00', 'Instalación'),
(8, '2025-03-08 15:30:00', 'Reparación'),
(9, '2025-03-09 16:00:00', 'Mantenimiento'),
(10, '2025-03-10 17:00:00', 'Instalación'),
(11, '2025-03-11 08:00:00', 'Reparación'),
(12, '2025-03-12 09:00:00', 'Mantenimiento'),
(13, '2025-03-13 10:30:00', 'Instalación'),
(14, '2025-03-14 11:00:00', 'Reparación'),
(15, '2025-03-15 12:00:00', 'Mantenimiento'),
(16, '2025-03-16 13:00:00', 'Instalación'),
(17, '2025-03-17 14:30:00', 'Reparación'),
(18, '2025-03-18 15:00:00', 'Mantenimiento'),
(19, '2025-03-19 16:30:00', 'Instalación'),
(20, '2025-03-20 17:30:00', 'Reparación'),
(21, '2025-03-21 08:30:00', 'Mantenimiento'),
(22, '2025-03-22 09:30:00', 'Instalación'),
(23, '2025-03-23 10:00:00', 'Reparación'),
(24, '2025-03-24 11:30:00', 'Mantenimiento'),
(25, '2025-03-25 12:00:00', 'Instalación'),
(26, '2025-03-26 13:30:00', 'Reparación'),
(27, '2025-03-27 14:30:00', 'Mantenimiento'),
(28, '2025-03-28 15:30:00', 'Instalación'),
(29, '2025-03-29 16:00:00', 'Reparación'),
(30, '2025-03-30 17:00:00', 'Mantenimiento'),
(31, '2025-03-31 08:30:00', 'Instalación'),
(32, '2025-04-01 09:00:00', 'Reparación'),
(33, '2025-04-02 10:00:00', 'Mantenimiento'),
(34, '2025-04-03 11:30:00', 'Instalación'),
(35, '2025-04-04 12:30:00', 'Reparación'),
(36, '2025-04-05 13:00:00', 'Mantenimiento'),
(37, '2025-04-06 14:00:00', 'Instalación'),
(38, '2025-04-07 15:30:00', 'Reparación'),
(39, '2025-04-08 16:00:00', 'Mantenimiento');


-- 8 
INSERT INTO Empleados (Nombre, CC) VALUES
('Carlos Pérez', '123456789'),
('María López', '987654321'),
('José García', '112233445'),
('Ana Martínez', '223344556'),
('Luis Fernández', '334455667'),
('Isabel Ramírez', '445566778'),
('Javier Gómez', '556677889'),
('Sofía Sánchez', '667788990'),
('Miguel Rodríguez', '778899001'),
('Lucía Díaz', '889900112'),
('Pedro Martínez', '990011223'),
('Laura González', '100112233'),
('Ricardo Gómez', '111223344'),
('Patricia López', '122334455'),
('José Fernández', '133445566'),
('Mariana Díaz', '144556677'),
('Samuel Sánchez', '155667788'),
('Beatriz Ramírez', '166778899'),
('Carlos Gómez', '177889900'),
('Marta González', '188990011'),
('Juan Pérez', '199001122'),
('Ana López', '200112233'),
('David García', '211223344'),
('Carla Martínez', '222334455'),
('José Rodríguez', '233445566'),
('Antonio Sánchez', '244556677'),
('Sergio Ramírez', '255667788'),
('Rosa Díaz', '266778899'),
('Lidia González', '277889900'),
('Rafael Castillo', '288990011'),
('Paula Fernández', '299001122'),
('Roberto García', '310112233'),
('Cristina Martínez', '321223344'),
('Raúl Sánchez', '332334455'),
('Eugenia Pérez', '343445566'),
('Julio López', '354556677'),
('Patricia González', '365667788'),
('Victor Díaz', '376778899'),
('Natalia Ramírez', '387889900');


-- 9 
INSERT INTO TrabajosMantenimiento (Proceso_ID, Tipo, Empleado_ID) VALUES
(1, 'Instalación de equipo', 1),
(2, 'Reparación de motor', 2),
(3, 'Mantenimiento preventivo', 3),
(4, 'Instalación de sistemas', 4),
(5, 'Reparación de frenos', 5),
(6, 'Mantenimiento de frenos', 6),
(7, 'Instalación de cámaras', 7),
(8, 'Reparación de transmisiones', 8),
(9, 'Mantenimiento de suspensión', 9),
(10, 'Instalación de luces', 10),
(11, 'Reparación de llantas', 11),
(12, 'Mantenimiento de motor', 12),
(13, 'Instalación de sistemas de seguridad', 13),
(14, 'Reparación de batería', 14),
(15, 'Mantenimiento de transmisión', 15),
(16, 'Instalación de vidrios', 16),
(17, 'Reparación de sensores', 17),
(18, 'Mantenimiento de aire acondicionado', 18),
(19, 'Instalación de sistemas de audio', 19),
(20, 'Reparación de ventanas', 20),
(21, 'Mantenimiento de luces', 21),
(22, 'Instalación de alarmas', 22),
(23, 'Reparación de dirección', 23),
(24, 'Mantenimiento de dirección', 24),
(25, 'Instalación de cinturones de seguridad', 25),
(26, 'Reparación de asientos', 26),
(27, 'Mantenimiento de sistemas electrónicos', 27),
(28, 'Instalación de sistemas GPS', 28),
(29, 'Reparación de sistema de frenos ABS', 29),
(30, 'Instalación de motores', 30),
(31, 'Reparación de sistemas eléctricos', 31),
(32, 'Mantenimiento de frenos y suspensión', 32),
(33, 'Instalación de cámaras de seguridad', 33),
(34, 'Reparación de sensores de velocidad', 34),
(35, 'Mantenimiento de climatización', 35),
(36, 'Instalación de sistema de audio premium', 36),
(37, 'Reparación de sistemas de dirección asistida', 37),
(38, 'Mantenimiento de sistemas hidráulicos', 38),
(39, 'Instalación de luces LED', 39);


-- 10 
INSERT INTO Automoviles (Marca, Placa, Modelo, Cliente_ID) VALUES
('Toyota', 'ABC1234', 'Corolla', 1),
('Honda', 'XYU5678', 'Civic', 2),
('Ford', 'LMN9101', 'Focus', 3),
('Chevrolet', 'PQR3456', 'Cruze', 4),
('Nissan', 'STU7890', 'Altima', 5),
('BMW', 'JKL1234', 'X5', 6),
('Mercedes', 'DEF5678', 'E-Class', 7),
('Audi', 'GHI9101', 'A4', 8),
('Volkswagen', 'XYZ7890', 'Golf', 9),
('Mazda', 'LMN0234', 'Mazda 6', 10),
('Hyundai', 'RST4567', 'Sonata', 11),
('Kia', 'VWX5678', 'Optima', 12),
('Renault', 'YZA7890', 'Clio', 13),
('Peugeot', 'BCD1234', '208', 14),
('Subaru', 'EFG5678', 'Outback', 15),
('Ford', 'HIJ9101', 'Fiesta', 16),
('Chevrolet', 'KLM1234', 'Malibu', 17),
('Toyota', 'NOP4567', 'Camry', 18),
('Honda', 'QRS7890', 'Accord', 19),
('BMW', 'TUV1234', 'M3', 20),
('Audi', 'WXY5678', 'A6', 21),
('Volkswagen', 'ZAB7890', 'Passat', 22),
('Mazda', 'CDE1234', 'Mazda CX-5', 23),
('Hyundai', 'FGH5678', 'Elantra', 24),
('Kia', 'IJK9101', 'Seltos', 25),
('Renault', 'LMN1234', 'Megane', 26),
('Peugeot', 'OPQ5678', '308', 27),
('Subaru', 'RST9101', 'Forester', 28),
('Ford', 'UVW1234', 'Mustang', 29),
('Chevrolet', 'ABC5678', 'Tahoe', 30),
('Honda', 'DEF6789', 'Pilot', 31),
('Nissan', 'GHI7890', 'Rogue', 32),
('BMW', 'JKL2345', 'X3', 33),
('Mercedes', 'MNO3456', 'C-Class', 34),
('Toyota', 'PQR4567', 'Highlander', 35),
('Mazda', 'STU5678', 'CX-9', 36),
('Volkswagen', 'VWX6789', 'Tiguan', 37),
('Hyundai', 'XYZ37890', 'Kona', 38),
('Subaru', 'YZA2345', 'Impreza', 39);


-- 11
INSERT INTO RegistroMantenimiento (Trabajo_ID, Fecha, Descripcion, Costo) VALUES
(1, '2025-03-01 08:30:00', 'Instalación de sistema de aire acondicionado', 250.00),
(2, '2025-03-02 09:15:00', 'Reparación de sistema de frenos', 150.00),
(3, '2025-03-03 10:00:00', 'Mantenimiento preventivo del motor', 120.00),
(4, '2025-03-04 11:45:00', 'Instalación de cámaras de seguridad', 200.00),
(5, '2025-03-05 12:30:00', 'Reparación de llantas', 50.00),
(6, '2025-03-06 13:30:00', 'Mantenimiento de sistema eléctrico', 180.00),
(7, '2025-03-07 14:00:00', 'Instalación de luces LED', 100.00),
(8, '2025-03-08 15:30:00', 'Reparación de suspensión', 250.00),
(9, '2025-03-09 16:00:00', 'Mantenimiento de batería', 80.00),
(10, '2025-03-10 17:00:00', 'Instalación de sistema de sonido', 350.00),
(11, '2025-03-11 08:00:00', 'Reparación de motor', 500.00),
(12, '2025-03-12 09:00:00', 'Mantenimiento de frenos', 120.00),
(13, '2025-03-13 10:30:00', 'Instalación de sistema de GPS', 220.00),
(14, '2025-03-14 11:00:00', 'Reparación de transmisión', 350.00),
(15, '2025-03-15 12:00:00', 'Mantenimiento de dirección', 150.00),
(16, '2025-03-16 13:00:00', 'Instalación de cinturones de seguridad', 80.00),
(17, '2025-03-17 14:30:00', 'Reparación de luces', 60.00),
(18, '2025-03-18 15:00:00', 'Mantenimiento del sistema de aire', 130.00),
(19, '2025-03-19 16:30:00', 'Instalación de parabrisas', 90.00),
(20, '2025-03-20 17:30:00', 'Reparación de sistema de encendido', 120.00),
(21, '2025-03-21 08:30:00', 'Mantenimiento de bomba de gasolina', 180.00),
(22, '2025-03-22 09:30:00', 'Instalación de cámaras de reversa', 220.00),
(23, '2025-03-23 10:00:00', 'Reparación de escape', 250.00),
(24, '2025-03-24 11:30:00', 'Mantenimiento de filtro de aire', 40.00),
(25, '2025-03-25 12:00:00', 'Instalación de sistema de alarma', 150.00),
(26, '2025-03-26 13:30:00', 'Reparación de asientos', 100.00),
(27, '2025-03-27 14:30:00', 'Mantenimiento de sistema de frenos', 110.00),
(28, '2025-03-28 15:30:00', 'Instalación de sensor de parking', 200.00),
(29, '2025-03-29 16:00:00', 'Reparación de dirección asistida', 180.00),
(30, '2025-03-30 08:00:00', 'Mantenimiento de sistema de suspensión', 140.00),
(31, '2025-03-31 09:00:00', 'Instalación de sistema de frenos ABS', 300.00),
(32, '2025-04-01 10:30:00', 'Reparación de sistema de calefacción', 200.00),
(33, '2025-04-02 11:00:00', 'Mantenimiento de sistema hidráulico', 160.00),
(34, '2025-04-03 12:00:00', 'Instalación de sensores de lluvia', 120.00),
(35, '2025-04-04 13:00:00', 'Reparación de sistema de dirección', 250.00),
(36, '2025-04-05 14:00:00', 'Mantenimiento de sistema de aire acondicionado', 180.00),
(37, '2025-04-06 15:00:00', 'Instalación de cámaras de seguridad adicionales', 220.00),
(38, '2025-04-07 16:00:00', 'Reparación de sistema de arranque', 150.00),
(39, '2025-04-08 17:00:00', 'Mantenimiento de filtros de aire acondicionado', 70.00);

-- ELIMINAR 10 DATOS

DELETE FROM RegistroMantenimiento
WHERE Trabajo_ID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

-- Consulta para la tabla Roles
SELECT * FROM Roles;

-- Consulta para la tabla Clientes
SELECT * FROM Clientes;

-- Consulta para la tabla Usuarios
SELECT * FROM Usuarios;

-- Consulta para la tabla Administradores
SELECT * FROM Administradores;

-- Consulta para la tabla HistorialClientes
SELECT * FROM HistorialClientes;

-- Consulta para la tabla Cotizaciones
SELECT * FROM Cotizaciones;

-- Consulta para la tabla Procesos
SELECT * FROM Procesos;

-- Consulta para la tabla Empleados
SELECT * FROM Empleados;

-- Consulta para la tabla TrabajosMantenimiento
SELECT * FROM TrabajosMantenimiento;

-- Consulta para la tabla Automoviles
SELECT * FROM Automoviles;

-- Consulta para la tabla RegistroMantenimiento
SELECT * FROM RegistroMantenimiento;

DELETE FROM Clientes WHERE ID >= 0;
