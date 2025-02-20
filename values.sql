insert into clientes (nombreCliente, telefonoCliente, direccionCliente) 
VALUES 
('Juan Pérez', '3001234567', 'Calle 123 #45-67'),
('María Gómez', '3107654321', 'Carrera 50 #10-20'),
('Carlos Ramírez', '3209988776', 'Avenida Siempre Viva 742');

insert into productos (nombreProducto, tipo, tamaño, precioBase) 
VALUES 
('Pizza Margarita', 'pizza', 'mediana', 25.00),
('Coca-Cola 500ml', 'bebida', 'grande', 5.00),
('Combo Familiar (Pizza Grande + 2 Bebidas)', 'combo', NULL, 40.00);

insert into ingredientes (nombreIngrediente, precioIngrediente, disponibilidad) 
VALUES 
('Queso Mozzarella', 2.50, TRUE),
('Pepperoni', 3.00, TRUE),
('Champiñones', 2.00, FALSE);

insert into productoIngredientes (idProducto, idIngrediente) 
VALUES 
(1, 1), 
(1, 2), 
(1, 3); 

insert into pedidos (idCliente, fechaPedido, horaPedido, horaRecogida, estadoPedido, estado) 
VALUES 
(1, '2025-02-19', '12:30:00', '13:00:00', 1, 'pendiente'),
(2, '2025-02-19', '14:00:00', '14:30:00', 2, 'pagado'),
(3, '2025-02-19', '15:30:00', '16:00:00', 3, 'preparando');

insert into PedidoProductos (idPedido, idProducto, cantidad, precioTotal) 
VALUES 
(1, 1, 2, 50.00), 
(2, 2, 3, 15.00), 
(3, 3, 1, 40.00); 

insert into pedidoIngredientes (idPedido, idIngrediente, cantidad, costoExtra) 
VALUES 
(1, 2, 1, 3.00),
(2, 1, 2, 5.00), 
(3, 3, 1, 2.00); 