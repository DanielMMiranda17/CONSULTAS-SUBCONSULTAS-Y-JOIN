-- Consultas Sencillas FPC r1
USE Full_Paint_Cars;


-- 1. Encontrar los clientes que tienen al menos un automóvil registrado.
SELECT * FROM clientes 
   WHERE id_cliente IN (SELECT cliente_duenio FROM automoviles);

-- 2. Clientes que han hecho cotizaciones.
   SELECT * FROM clientes 
   WHERE id_cliente IN (SELECT clientes_id FROM cotizaciones);

-- 3. Cotizaciones con precios superiores al promedio.
SELECT * FROM cotizaciones
   WHERE precios > (SELECT AVG(precios) FROM cotizaciones);
   
-- 4. muestra los clientes que hayan hecho alguna cotizacion de pintura y lavado de tapiceria
SELECT nombre_cliente FROM clientes
   WHERE id_cliente IN (SELECT clientes_id FROM cotizaciones
       WHERE servicios IN ('Pintura', 'Lavado de tapiceria') GROUP BY clientes_id
       HAVING COUNT(DISTINCT servicios) = 2);

-- 5. Listar cotizaciones donde el nombre del cliente está en la tabla de clientes.
SELECT * FROM cotizaciones 
   WHERE nombre_cliente IN (SELECT nombre_cliente FROM clientes);

-- 6. Automóviles que no tienen procesos registrados.
SELECT * FROM automoviles 
   WHERE id_automoviles NOT IN (SELECT id_cotizaciones FROM procesos);

-- 7. Encontrar los administradores que también tienen un rol de empleado.
SELECT * FROM administradores 
   WHERE cedula_admin IN (SELECT cedula_empleado FROM empleados);

-- 8. Listar cotizaciones que son de un mismo cliente específico.
SELECT * FROM cotizaciones 
   WHERE clientes_id = (SELECT id_cliente FROM clientes WHERE nombre_cliente = 'Nombre del Cliente');

-- 9. Mostrar procesos que tienen un costo mayor que el más caro registrado.
SELECT * FROM procesos 
   WHERE costo_procesos > (SELECT MAX(costo_procesos) FROM procesos);

-- 10. Mostrar clientes con cotizaciones pendientes.
SELECT * FROM clientes
	WHERE id_cliente IN (SELECT clientes_id FROM cotizaciones WHERE fecha_a_realizar_servicio > NOW());