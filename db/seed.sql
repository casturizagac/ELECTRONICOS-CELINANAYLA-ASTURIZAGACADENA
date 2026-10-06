USE electronicos;

INSERT INTO categorias (nombre) VALUES
('Computadoras'),
('Accesorios'),
('Celulares');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Laptop HP', 1, 4500.00, 4),
('Laptop Lenovo', 1, 5200.00, 8),
('PC Gamer', 1, 7500.00, 3),
('Monitor Samsung', 1, 1800.00, 10),
('Teclado Logitech', 2, 250.00, 15),
('Mouse Logitech', 2, 180.00, 20),
('Audifonos Sony', 2, 450.00, 7),
('Webcam HD', 2, 300.00, 4),
('Celular Samsung', 3, 2200.00, 6),
('Celular Xiaomi', 3, 1600.00, 9),
('iPhone', 3, 6500.00, 2),
('Cable USB-C', 2, 80.00, 25);

INSERT INTO clientes (nombre, telefono, email) VALUES
('Juan Perez', '70123456', 'juan@gmail.com'),
('Maria Lopez', '70234567', 'maria@gmail.com'),
('Carlos Fernandez', '70345678', 'carlos@gmail.com'),
('Ana Martinez', '70456789', 'ana@gmail.com'),
('Luis Garcia', '70567890', 'luis@gmail.com'),
('Sofia Rodriguez', '70678901', 'sofia@gmail.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-09-01', 'Entregado'),
(1, '2026-09-05', 'Entregado'),
(1, '2026-09-10', 'Pendiente'),
(2, '2026-09-03', 'Entregado'),
(2, '2026-09-12', 'Pendiente'),
(3, '2026-09-04', 'Entregado'),
(3, '2026-09-15', 'Cancelado'),
(4, '2026-09-07', 'Entregado'),
(5, '2026-09-08', 'Pendiente'),
(6, '2026-09-09', 'Entregado');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 4500.00),
(1, 5, 2, 250.00),
(1, 6, 1, 180.00),
(2, 2, 1, 5200.00),
(2, 7, 1, 450.00),
(3, 3, 1, 7500.00),
(3, 8, 1, 300.00),
(4, 4, 1, 1800.00),
(4, 6, 2, 180.00),
(5, 9, 1, 2200.00),
(5, 12, 2, 80.00),
(6, 10, 1, 1600.00),
(6, 5, 1, 250.00),
(6, 6, 1, 180.00),
(7, 11, 1, 6500.00),
(7, 7, 1, 450.00),
(8, 1, 1, 4500.00),
(8, 8, 1, 300.00),
(9, 9, 1, 2200.00),
(9, 6, 2, 180.00),
(10, 2, 1, 5200.00),
(10, 5, 1, 250.00),
(10, 12, 1, 80.00),
(10, 7, 1, 450.00);