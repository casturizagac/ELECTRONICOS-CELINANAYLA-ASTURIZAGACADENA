USE electronicos;

-- 1. Productos con su categoría
SELECT 
    productos.nombre AS producto,
    categorias.nombre AS categoria
FROM productos
JOIN categorias
    ON productos.categoria_id = categorias.id
ORDER BY productos.nombre;

-- 2. Productos con menos de 5 unidades en stock
SELECT *
FROM productos
WHERE stock < 5;

-- 3. Precio promedio por categoría
SELECT
    categorias.nombre AS categoria,
    AVG(productos.precio) AS precio_promedio
FROM productos
JOIN categorias
    ON productos.categoria_id = categorias.id
GROUP BY categorias.id, categorias.nombre;

-- 4. Pedidos de un cliente
SELECT
    clientes.nombre,
    pedidos.fecha,
    pedidos.estado
FROM pedidos
JOIN clientes
    ON pedidos.cliente_id = clientes.id
WHERE clientes.id = 1;

-- 5. Total de cada pedido
SELECT
    pedido_id,
    SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id;

-- 6. Clientes con más de 2 pedidos
SELECT
    clientes.id,
    clientes.nombre,
    COUNT(pedidos.id) AS cantidad_pedidos
FROM clientes
JOIN pedidos
    ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nombre
HAVING COUNT(pedidos.id) > 2;

-- 7. Eliminar un cliente sin pedidos
DELETE FROM clientes
WHERE id = 6
AND NOT EXISTS (
    SELECT 1
    FROM pedidos
    WHERE pedidos.cliente_id = clientes.id
);