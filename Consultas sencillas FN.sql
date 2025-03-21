USE FPC;

-- Consultas Sencillas
-- 1. Obtener todos los usuarios registrados
SELECT * FROM Usuarios;

-- 2. Obtener todos los roles disponibles
SELECT * FROM Roles;

-- 3. Obtener todos los automóviles registrados
SELECT * FROM Automoviles;

-- 4. Obtener todos los procesos de mantenimiento registrados
SELECT * FROM Procesos;

-- 5. Obtener todas las cotizaciones realizadas
SELECT * FROM Cotizaciones;

-- 6. Obtener todas las conversaciones de chat
SELECT * FROM Chats;

-- 7. Obtener todos los reportes generados
SELECT * FROM Reportes;

-- 8. Obtener usuarios que son administradores
SELECT * FROM Usuarios WHERE rol_id = (SELECT id FROM Roles WHERE nombre = 'Administrador');

-- 9. Obtener las citas agendadas para un automóvil específico
SELECT * FROM Citas WHERE auto_id = 1;

-- 10. Obtener todos los mecánicos registrados
SELECT * FROM Usuarios WHERE rol_id = (SELECT id FROM Roles WHERE nombre = 'Mecánico');


