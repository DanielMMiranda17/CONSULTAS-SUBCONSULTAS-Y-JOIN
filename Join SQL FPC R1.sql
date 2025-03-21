-- Consultas Sencillas FPC r1
USE Full_Paint_Cars;


-- 1. Listar todos los automóviles junto al nombre de su dueño.
SELECT a.placa_automovil, c.nombre_cliente FROM automoviles AS a
   JOIN clientes AS c ON a.cliente_duenio = c.id_cliente;

-- 2. Mostrar todas las cotizaciones con información del cliente.
SELECT cot.servicio_a_realizar, c.nombre_cliente FROM cotizaciones AS cot
   JOIN clientes AS c ON cot.clientes_id = c.id_cliente;

-- 3. Obtener todos los procesos con su respectivo empleado.
SELECT p.fecha_inicio, e.nombre_empleado FROM procesos as p
   JOIN empleados AS e ON p.id_empleados = e.id_empleado;

-- 4. Listar automóviles y las cotizaciones relacionadas.
SELECT a.marca_automovil, cot.servicio_a_realizar FROM automoviles AS a
   JOIN cotizaciones AS cot ON a.id_automoviles = cot.clientes_id;

-- 5. Listar todos los procesos y sus respectivas cotizaciones.
SELECT p.servicios, cot.descripcion_servicio_a_revisar FROM procesos AS p
   JOIN cotizaciones AS cot ON p.id_cotizaciones = cot.id_cotizaciones;

-- 6. Contar la cantidad de automóviles por cada cliente.
SELECT c.nombre_cliente, COUNT(a.id_automoviles) AS total_automoviles FROM clientes AS c
   JOIN automoviles AS a ON c.id_cliente = a.cliente_duenio
   GROUP BY c.id_cliente;

-- 7. Mostrar la información de los empleados y las cotizaciones que han manejado.
SELECT e.nombre_empleado, cot.nombre_cliente FROM empleados AS e
   JOIN procesos AS p ON e.id_empleado = p.id_empleados
   JOIN cotizaciones AS cot ON p.id_cotizaciones = cot.id_cotizaciones;

-- 8. Listar los servicios realizados y el costo de cada uno.
SELECT p.servicios, p.costo_procesos FROM procesos AS p
   JOIN cotizaciones AS cot ON p.id_cotizaciones = cot.id_cotizaciones;

-- 9. Obtener la lista de clientes y las cotizaciones que han realizado.
SELECT c.nombre_cliente, cot.servicio_a_realizar FROM clientes AS c
   JOIN cotizaciones AS cot ON c.id_cliente = cot.clientes_id;

-- 10. Listar administradores y los empleados bajo su gestión.
SELECT a.nombre_admin, e.nombre_empleado FROM administradores AS a
    JOIN empleados AS e ON a.cedula_admin = e.cedula_empleado;