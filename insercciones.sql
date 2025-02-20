-- 1. Registrar un nuevo cliente
insert into clientes (nombreCliente, telefonoCliente, direccionCliente) 
VALUES ('Luis Fernández', '3157894561', 'Calle 45 #23-12');

-- 2. Agregar un nuevo producto (pizza) al menú
insert into productos (nombreProducto, tipo, tamaño, precioTotal) 
VALUES ('Pizza Cuatro Quesos', 'pizza', 'grande', 30.00);

-- 3. Agregar un ingrediente a la base de datos
insert into Ingredientes (nombreIngrediente, precioIngrediente, disponibilidad) 
VALUES ('Aceitunas Negras', 1.50, TRUE);

-- 4. Añadir productos a un pedido específico
insert into PedidoProductos (idPedido, idProducto, cantidad, precioTotal) 
VALUES (1, 1, 2, 50.00);

-- 5. Añadir ingredientes adicionales a una pizza en un pedido
insert into PedidoIngredientes (idPedido, idIngrediente, cantidad, costoExtra) 
VALUES (1, 4, 1, 1.50);

-- 6. Actualizar la dirección de un cliente
update Clientes SET direccionCliente = 'Carrera 80 #10-55' WHERE nombreCliente = 'Luis Fernández';

-- 7. Registrar una bebida en el menú
insert into Productos (nombreProducto, tipo, tamaño, precioTotal) 
VALUES ('Jugo de Naranja', 'bebida', NULL, 6.00);

-- 8. Eliminar un producto del menú (bebida)
delete from Productos WHERE nombreProducto = 'Jugo de Naranja' AND tipo = 'bebida';

-- 9. Eliminar un ingrediente de la base de datos
delete from Ingredientes WHERE nombreIngrediente = 'Champiñones';

-- 10. Consultar todos los pedidos de un cliente
select * FROM Pedidos WHERE idCliente = 1;

-- 11. Listar todos los productos disponibles en el menú (pizzas y bebidas)
select * FROM Productos WHERE tipo IN ('pizza', 'bebida');

-- 12. Listar todos los ingredientes disponibles para personalizar una pizza
select * FROM Ingredientes WHERE disponibilidad = TRUE;