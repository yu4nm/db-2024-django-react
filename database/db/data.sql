-- #######################################################
-- https://codeshare.io/MkXm9R
-- Database Course
-- Univalle 23-10-2024
-- @JAPeTo
-- #######################################################


--- 10 records into Client Table
INSERT INTO cliente VALUES
  (1, 'Juan', 'Pérez', 'Cliente frecuente'),
  (2, 'María', 'López', 'Cliente nuevo'),
  (3, 'Carlos', 'García', 'Solicita mesa cerca de la ventana'),
  (4, 'Ana', 'Martínez', 'Prefiere no picante'),
  (5, 'José', 'Hernández', 'Cliente VIP'),
  (6, 'Laura', 'Ramírez', 'Alergia a mariscos'),
  (7, 'Pedro', 'Sánchez', 'Vegetariano'),
  (8, 'Marta', 'Gómez', 'Le gusta el vino tinto'),
  (9, 'Andrés', 'Díaz', 'Cliente recurrente los fines de semana'),
  (10, 'Luis', 'Fernández', 'Prefiere comida baja en grasa');

--- 10 records into Mesero Table
INSERT INTO mesero VALUES
  (1, 'Sofía', 'Morales', 'Turno de la mañana'),
  (2, 'Daniel', 'Vargas', 'Turno de la tarde'),
  (3, 'Lucía', 'Ortega', 'Experiencia en atención a grandes grupos'),
  (4, 'Jorge', 'Reyes', 'Especialista en vinos'),
  (5, 'Elena', 'Ruiz', 'Siempre atiende a clientes VIP'),
  (6, 'Gabriel', 'Castro', 'Excelente con clientes extranjeros'),
  (7, 'Carmen', 'Ríos', 'Preferida por clientes regulares'),
  (8, 'David', 'Mendoza', 'Atención rápida'),
  (9, 'Isabel', 'Silva', 'Experiencia en eventos especiales'),
  (10, 'Carlos', 'Torres', 'Excelente con niños');

--- 10 records into Platillo Table
INSERT INTO platillo VALUES
  (1, 'Ensalada César', 150),
  (2, 'Tacos al Pastor', 80),
  (3, 'Sopa de Tortilla', 120),
  (4, 'Hamburguesa Clásica', 200),
  (5, 'Pasta Alfredo', 180),
  (6, 'Pizza Margarita', 250),
  (7, 'Sushi Variado', 300),
  (8, 'Pollo a la Parrilla', 220),
  (9, 'Filete de Res', 400),
  (10, 'Paella de Mariscos', 350);

--- 10 records into Bebidas Table
INSERT INTO bebida VALUES
(1, 'Agua Mineral', 30),
(2, 'Refresco', 40),
(3, 'Cerveza', 60),
(4, 'Vino Tinto', 150),
(5, 'Café', 50),
(6, 'Té Helado', 45),
(7, 'Limonada', 35),
(8, 'Coctel Margarita', 120),
(9, 'Whisky', 200),
(10, 'Gin Tonic', 180);

--- 10 records into Mesa Table
INSERT INTO mesa VALUES
(1, 4, 'Terraza'),
(2, 2, 'Ventana'),
(3, 6, 'Salón Principal'),
(4, 8, 'Salón VIP'),
(5, 2, 'Jardín'),
(6, 4, 'Jardín'),
(7, 10, 'Salón de Eventos'),
(8, 4, 'Barra'),
(9, 2, 'Barra'),
(10, 6, 'Barra');

--- 10 records into Factura Table
INSERT INTO factura VALUES
(1, '2024-01-15', 1, 1, 1, 1, 1),
(2, '2024-01-16', 2, 2, 2, 2, 2),
(3, '2024-01-17', 3, 3, 3, 3, 3),
(4, '2024-01-18', 4, 4, 4, 4, 4),
(5, '2024-01-19', 5, 5, 5, 5, 5),
(6, '2024-01-20', 6, 6, 6, 6, 6),
(7, '2024-01-21', 7, 7, 7, 7, 7),
(8, '2024-01-22', 8, 8, 8, 8, 8),
(9, '2024-01-23', 9, 9, 9, 9, 9),
(10, '2024-01-24', 10, 10, 10, 10, 10);
