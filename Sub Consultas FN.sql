USE FPC;

-- Subconsultas
-- 1. Obtener el nombre del usuario con el ID de sesión más reciente
SELECT nombre FROM Usuarios WHERE id = (SELECT MAX(id) FROM Sesiones);

-- 2. Obtener el automóvil con más reportes registrados
SELECT modelo FROM Automoviles WHERE id = (SELECT auto_id FROM Reportes GROUP BY auto_id ORDER BY COUNT(*) DESC LIMIT 1);

-- 3. Obtener la cantidad de roles registrados
SELECT COUNT(*) FROM Roles;

-- 4. Obtener el nombre del usuario que ha realizado más cotizaciones
SELECT nombre FROM Usuarios WHERE id = (SELECT usuario_id FROM Cotizaciones GROUP BY usuario_id ORDER BY COUNT(*) DESC LIMIT 1);

-- 5. Obtener el servicio más solicitado en cotizaciones
SELECT nombre FROM Servicios WHERE id = (SELECT servicio_id FROM Cotizaciones GROUP BY servicio_id ORDER BY COUNT(*) DESC LIMIT 1);

-- 6. Obtener el usuario con más reportes generados
SELECT nombre FROM Usuarios WHERE id = (SELECT usuario_id FROM Reportes GROUP BY usuario_id ORDER BY COUNT(*) DESC LIMIT 1);

-- 7. Obtener el total de procesos registrados para un automóvil específico
SELECT COUNT(*) FROM Procesos WHERE auto_id = 1;

-- 8. Obtener el total de mensajes enviados en los chats
SELECT COUNT(*) FROM Chats;

-- 9. Obtener la última cotización realizada por un usuario específico
SELECT * FROM Cotizaciones WHERE usuario_id = 1 ORDER BY fecha DESC LIMIT 1;

-- 10. Obtener el reporte más reciente de un automóvil
SELECT * FROM Reportes WHERE auto_id = 1 ORDER BY fecha DESC LIMIT 1;