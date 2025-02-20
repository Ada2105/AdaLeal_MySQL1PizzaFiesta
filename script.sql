create database PizzaFiesta;
use PizzaFiesta;

create table clientes (
    idCliente INT primary key,
    nombreCliente VARCHAR(50) not null,
    telefonoCliente VARCHAR(15) not null,
    direccionCliente VARCHAR(100) not null
);

create table productos (
    idProducto INT primary key,
    nombreProducto VARCHAR(50) not null,
    tipo ENUM('pizza', 'bebida','combo') not null,
    tamaño ENUM('pequeña', 'mediana', 'grande') not null,
    precioBase DECIMAL(10,2) not null
);

create table ingredientes (
    idIngrediente INT primary key,
    nombreIngrediente VARCHAR(50) not null,
    precioIngrediente DECIMAL(10,2) not null,
    disponibilidad BOOLEAN DEFAULT TRUE
);

CREATE TABLE ProductoIngredientes (
    idProducto INT,
    idIngrediente INT,
    PRIMARY KEY (idProducto, idIngrediente),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto),
    FOREIGN KEY (idIngrediente) REFERENCES Ingredientes(idIngrediente)
);

create table pedidos (
    idPedido INT primary key,
    idCliente INT,
    fechaPedido DATE not null,
    horaPedido TIME not null,
    horaRecogida TIME not null,
    estado ENUM('pendiente', 'pagado', 'preparando', 'listo', 'entregado') default 'pendiente',
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);

create table pedidoProductos (
    idPedido INT,
    idProducto INT,
    cantidad INT not null check (cantidad > 0),
    precioTotal DECIMAL(10,2) not null,
    PRIMARY KEY (idPedido, idProducto),
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto) 
);

create table pedidoIngredientes (
    idPedido INT,
    idIngrediente INT,
    cantidad INT not null check (cantidad > 0),
    costoExtra DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (idPedido, idIngrediente),
    FOREIGN KEY (idPedido) REFERENCES Pedidos(idPedido),
    FOREIGN KEY (idIngrediente) REFERENCES Ingredientes(idIngrediente)
);




