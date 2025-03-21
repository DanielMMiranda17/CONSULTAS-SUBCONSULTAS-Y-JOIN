-- Consultas Sencillas FPC r1
USE Full_Paint_Cars;

-- 1. Listar todos los usuarios.
SELECT * FROM usuarios;

-- 2. Mostrar todos los clientes.
SELECT * FROM clientes;

-- 3. *Contar la cantidad de empleados.*
SELECT COUNT(*) FROM empleados;

-- 4. Mostrar todos los automóviles.
SELECT * FROM automoviles;

-- 5. Listar todas las cotizaciones.
SELECT * FROM cotizaciones;

-- 6. Contar la cantidad de procesos registrados.
SELECT COUNT(*) FROM procesos;

-- 7. Obtener el nombre y teléfono de todos los administradores.
SELECT nombre_admin, telefono_admin FROM administradores;

-- 8. Mostrar todos los servicios enumerados en cotizaciones.
SELECT DISTINCT servicios FROM cotizaciones;

-- 9. Obtener el correo electrónico de todos los clientes.
SELECT email_cliente FROM clientes;

-- 10. Listar todos los automóviles de tipo "Carro".
SELECT * FROM automoviles WHERE select_automovil = 'Carro';