-- ************************************ CREACION TABLAS E INSERCION DE DATOS ************************************
USE DonElias
GO
-----
CREATE TABLE [Promociones] (
   [Id_Promocion] int IDENTITY(1,1) PRIMARY KEY,
   [Nombre] varchar(100) NOT NULL,
   [Fecha_Inicio] date NOT NULL,
   [Fecha_Finalizacion] date NOT NULL
);
GO

INSERT INTO 
[Promociones] ([Nombre], [Fecha_Inicio], [Fecha_Finalizacion])

VALUES 
('Promocion Productos Horneaditos', '2025-02-15', '2025-06-15'),

('Compra 1 lleva 2 en Arroz Diana', '2025-04-15', '2025-06-15'),

('Tapas Coca Cola por Vajillas', '2025-05-15', '2025-06-15'),

('Descuento del 20% en Aceite Premier', '2025-04-01', '2025-05-31'),

('Combo de Lentejas y Frijoles Diana', '2025-03-10', '2025-06-10'),

('3 Leches Alqueria por el precio de 2', '2025-05-01', '2025-06-30'),

('Rebaja del 15% en Azucar Riopaila', '2025-02-20', '2025-04-30'),

('Compra 2 Pastas Doria y lleva una Salsa Gratis', '2025-04-10', '2025-06-10'),

('Promocion Arepas Antioqueñas – Lleve 4 pague 3', '2025-05-05', '2025-07-05'),

('Descuento en Huevos Kikes por compra mayor a 2 canastas', '2025-03-15', '2025-05-15');
GO

----------------------------------------

CREATE TABLE [Categoria_de_Productos](
    [Id_Categoria] int IDENTITY(1,1) PRIMARY KEY,
    [Nombre] varchar(30) NOT NULL
)

INSERT INTO 
[Categoria_de_Productos] ([Nombre])

VALUES 
('Lacteos'),

('Carnes'),

('Frutas'),

('Verduras'),

('Panaderia'),

('Bebidas'),

('Aseo'),

('Granos'),

('Snacks'),

('Congelados');
GO


----------------------------------------

CREATE TABLE [Productos] (
   [Id_Producto] int IDENTITY(1,1) PRIMARY KEY,
   [Id_Categoria] int NOT NULL,
   [Id_Promocion] int,
   [Nombre] varchar(100) NOT NULL,
   [Precio_Venta] int NOT NULL,
   [Precio_Compra] int NOT NULL,
   [Stock] int NOT NULL,
   [Fecha_Vencimiento] date NOT NULL,
   
   FOREIGN KEY ([Id_Categoria]) REFERENCES [Categoria_de_Productos]([Id_Categoria]),
   FOREIGN KEY ([Id_Promocion]) REFERENCES [Promociones]([Id_Promocion])
);
GO

INSERT INTO [Productos] 
([Id_Categoria], [Id_Promocion], [Nombre], [Precio_Venta], [Precio_Compra], [Stock], [Fecha_Vencimiento]) 

VALUES 
(7, NULL, 'Jabon Rey barra 300g', 2800, 2100, 300, '2027-01-01'),

(1, 1, 'Mini brownies horneaditos 12 und 280 grs', 8600, 5000, 150, '2025-07-01'),

(3, 3, 'Coca Cola 1.5L', 5500, 4900, 300, '2025-12-31'),

(2, 2, 'Arroz Diana x 5kg', 22450, 18000, 200, '2026-01-15'),

(9, NULL, 'Papas Margarita natural 115g', 3200, 2500, 200, '2025-10-15'),

(7, 7, 'Azucar Riopaila', 5100, 4000, 250, '2026-02-01'),

(5, 5, 'Frijoles Diana', 10500, 7900, 120, '2026-03-01'),

(6, 6, 'Leche Alqueria x3 1L', 8700, 6600, 160, '2025-08-15'),

(1, NULL, 'Yogur Alpina fresa 150g', 3200, 2400, 100, '2025-07-20'),

(2, NULL, 'Pollo entero congelado', 9200, 7200, 10, '2025-08-10'),

(4, 4, 'Aceite Premier 900ml', 9120, 7200, 180, '2025-11-01'),

(3, NULL, 'Manzanas rojas', 6800, 5400, 90, '2025-05-30'),

(5, NULL, 'Pan tajado Bimbo integral 500g', 8500, 6700, 110, '2025-06-15'),

(6, NULL, 'Gaseosa Postobon Manzana 2L', 6000, 4800, 30, '2025-12-31'),

(8, NULL, 'Lentejas x1kg', 7300, 5900, 70, '2026-04-10'),

(9, 9, 'Arepas Antioqueñas', 5200, 4000, 140, '2025-06-10'),

(4, NULL, 'Tomates chonto', 5200, 4000, 80, '2025-05-28'),

(10, NULL, 'Pizza congelada Zenu 500g', 11900, 9500, 75, '2025-07-05'),

(8, 8, 'Pasta Doria 500g', 6200, 4700, 130, '2026-04-01'),

(10, 10, 'Huevos Kikes Canasta x30', 23900, 19000, 80, '2025-05-25');

GO

------------------------------

CREATE TABLE [Lotes] (
   [Id_Lote] int IDENTITY(1,1) PRIMARY KEY,
   [Fecha_Produccion] date NOT NULL,
   [Fecha_Vencimiento] date NOT NULL
);
GO

INSERT INTO [Lotes] ([Fecha_Produccion], [Fecha_Vencimiento]) 
VALUES
('2025-01-10', '2025-07-10'),

('2025-02-15', '2025-08-15'),

('2025-03-01', '2025-09-01'),

('2025-03-20', '2025-09-20'),

('2025-04-05', '2025-10-05'),

('2025-04-25', '2025-10-25'),

('2025-05-01', '2025-11-01'),

('2025-05-05', '2025-11-05'),

('2025-05-10', '2025-11-10'),

('2025-05-11', '2025-11-11'),

('2025-05-12', '2025-11-12'),

('2025-05-13', '2025-11-13'),

('2025-05-14', '2025-11-14'),

('2025-05-15', '2025-11-15'),

('2025-05-16', '2025-11-16'),

('2025-05-17', '2025-11-17'),

('2025-05-18', '2025-11-18'),

('2025-05-19', '2025-11-19'),

('2025-05-20', '2025-11-20'),

('2025-05-21', '2025-11-21');
GO

--------------------
CREATE TABLE [Lotes_Productos] (
   [Id_Producto] int NOT NULL,
   [Id_Lote] int NOT NULL,
   PRIMARY KEY ([Id_Producto], [Id_Lote]),

   FOREIGN KEY ([Id_Producto]) REFERENCES [Productos]([Id_Producto]),
   FOREIGN KEY ([Id_Lote]) REFERENCES [Lotes]([Id_Lote])
);
GO

INSERT INTO [Lotes_Productos] ([Id_Producto], [Id_Lote]) 
VALUES
(1, 1),

(2, 2),

(3, 3),

(4, 4),

(5, 5),

(6, 6),

(7, 7),

(8, 8),

(9, 9),

(10, 10),

(11, 11),

(12, 12),

(13, 13),

(14, 14),

(15, 15),

(16, 16),

(17, 17),

(18, 18),

(19, 19),

(20, 20);
GO

------------------------------

CREATE TABLE [Proveedores](
    [Id_Proveedor] int IDENTITY(1,1) PRIMARY KEY,
    [Nombre_Completo] varchar(100) NOT NULL,
    [Telefono] varchar(15) NOT NULL,
    [Tipo_Producto] varchar(30) NOT NULL,
    [Correo] varchar(30) NOT NULL,
    [Direccion] varchar(30) NOT NULL
)
GO

INSERT INTO [Proveedores] ([Nombre_Completo], [Telefono], [Tipo_Producto], [Correo], [Direccion])

VALUES
('Carlos Andres Perez Ramirez', '+57 3004567890', 'Panaderia', 'carlos.perez@horneaditos.com', 'Calle 12 #45-67'),

('Ana Lucia Rios Cardenas', '3201234567', 'Granos', 'ana.rios@diana.com', 'Carrera 7 #21-10'),

('Pedro Javier Gomez Lozano', '3119988776', 'Bebidas', 'pedro.gomez@cocacola.com', 'Av. Las Palmas #34-22'),

('Maria Fernanda Torres Valdes', '3184455667', 'Aceites', 'maria.torres@premier.com', 'Calle 10 #12-05'),

('Lucia Alejandra Herrera Duque', '3005566778', 'Granos', 'lucia.herrera@diana.com', 'Transv. 8 #44-19'),

('Fernando Jose Ruiz Salazar', '3109981122', 'Lacteos', 'fernando.ruiz@alqueria.com', 'Calle 50 #32-10'),

('Beatriz Elena Quintero Vargas', '3011122334', 'Endulzantes', 'beatriz.quintero@riopaila.com', 'Carrera 
11 #56-89'),

('Jorge Alberto Martinez Rincon', '3178899001', 'Pastas', 'jorge.martinez@doria.com', 'Av. Nutribella #11-34'),

('Andrea Carolina Lopez Medina', '3197776665', 'Panaderia', 'andrea.lopez@arepasant.com', 'Calle 89 #67-23'),

('Camilo Esteban Salazar Hoyos', '3123344556', 'Huevos', 'camilo.salazar@kikes.com', 'Carrera 10 #20-14');
GO

-----------------------------

CREATE TABLE [Productos_Proveedores](
   [Id_Producto] int NOT NULL,
   [Id_Proveedor] int NOT NULL,
   
   PRIMARY KEY ([Id_Producto], [Id_Proveedor]),

   FOREIGN KEY ([Id_Producto]) REFERENCES [Productos]([Id_Producto]),
   FOREIGN KEY ([Id_Proveedor]) REFERENCES [Proveedores]([Id_Proveedor])
)
GO

INSERT INTO [Productos_Proveedores]([Id_Producto], [Id_Proveedor])
VALUES
(1, 1),

(2, 2),

(3, 3),

(4, 4),

(5, 5),

(6, 6),

(7, 7),

(8, 8),

(9, 9),

(10, 10),

(11, 1),  

(12, 3), 

(13, 9),  

(14, 3),

(15, 2),  

(16, 9),  

(17, 4),  

(18, 10), 

(19, 8),  

(20, 10);
GO
-------------------------------

CREATE TABLE [Inventarios](
    Id_Inventario int IDENTITY (1,1) PRIMARY KEY,
    Id_Producto int NOT NULL,
    Stock_Actual int NOT NULL,
    Stock_Minimo int NOT NULL,
    Ultima_Actualizacion date,

    FOREIGN KEY ([Id_Producto]) REFERENCES [Productos]([Id_Producto])
)
GO

INSERT INTO [Inventarios] 
([Id_Producto], [Stock_Actual], [Stock_Minimo], [Ultima_Actualizacion])
VALUES 
(1, 150, 30, '2025-05-01'),   

(2, 200, 50, '2025-04-28'),   

(3, 300, 100, NULL),          

(4, 180, 40, '2025-05-05'),   

(5, 120, 20, NULL),           

(6, 160, 30, '2025-05-08'),   

(7, 250, 60, NULL),           

(8, 130, 25, '2025-05-07'),   

(9, 140, 35, NULL),           

(10, 80, 45, '2025-05-06'),

(11, 180, 40, '2025-05-09'),

(12, 90, 20, NULL),

(13, 110, 30, '2025-05-10'),

(14, 30, 40, NULL),

(15, 70, 20, '2025-05-11'),

(16, 140, 35, '2025-05-12'),

(17, 80, 20, NULL),

(18, 75, 25, '2025-05-13'),

(19, 130, 30, NULL),

(20, 80, 20, '2025-05-14');
GO

-------------------------------

CREATE TABLE [Sucursales](
    [Id_Sucursal] int IDENTITY(1,1) PRIMARY KEY,
    [Id_Inventario] int NOT NULL,
    [Capacidad_Almacenamiento] int NOT NULL,
    [Direccion] varchar(30) NOT NULL

    FOREIGN KEY ([Id_Inventario]) REFERENCES [Inventarios]([Id_Inventario])
)
GO

INSERT INTO [Sucursales] ([Id_Inventario], [Capacidad_Almacenamiento], [Direccion])

VALUES

(1, 500, 'Cra 7 #12-34'),

(2, 800, 'Av. Caracas #45-67'),

(3, 950, 'Calle 100 #23-45'),

(4, 600, 'Cra 15 #80-20'),

(5, 720, 'Calle 13 #18-25'),

(6, 670, 'Av. Suba #110-50'),

(7, 780, 'Calle 72 #9-10'),

(8, 850, 'Cra 30 #45-80'),

(9, 620, 'Av. Boyaca #80-55'),

(10, 500, 'Calle 26 #96-18');
GO

-------------------------------

CREATE TABLE [Cargo_de_Empleado](
    [Id_Cargo] int IDENTITY(1,1) PRIMARY KEY,
    [Nombre] varchar(50) NOT NULL
)
GO

INSERT INTO [Cargo_de_Empleado] ([Nombre])

VALUES
('Cajero'),
('Auxiliar de Bodega'),
('Administrador'),
('Gerente de Sucursal'),
('Supervisor de Turno'),
('Auxiliar de Aseo'),
('Operario de Reposicion'),
('Jefe de Compras'),
('Domiciliario'),
('Encargado de Seguridad');
GO

-------------------------------

CREATE TABLE [Empleados](
    [Id_Empleado] int IDENTITY(1,1) PRIMARY KEY,
    [Id_Sucursal] int NOT NULL,
    [Id_Cargo] int NOT NULL,
    [Nombre_Completo] varchar(100) NOT NULL,
    [Edad] int NOT NULL,
    [Cedula] int NOT NULL,
    [Salario] int NOT NULL,
    [Inicio_Turno] time NOT NULL,
    [Fin_Turno] time NOT NULL

    FOREIGN KEY ([Id_Sucursal]) REFERENCES [Sucursales]([Id_Sucursal]),
    FOREIGN KEY ([Id_Cargo]) REFERENCES [Cargo_de_Empleado]([Id_Cargo])
)
GO

INSERT INTO [Empleados] (
    [Id_Sucursal], [Id_Cargo], [Nombre_Completo], [Edad], [Cedula], [Salario], [Inicio_Turno], [Fin_Turno]
)
VALUES 
(1, 3, 'Camila Torres Ramirez', 26, 1024587412, 3500000, '07:00', '16:00'),

(2, 1, 'Luis Miguel Rios Castaño', 18, 1008235698, 1800000, '08:00', '17:00'),

(3, 4, 'Otoniel Humberto Gomez Duarte', 32, 1015648932, 4200000, '09:00', '18:00'),

(4, 2, 'Jorge Andres Ruiz Vargas', 19, 1025698745, 1900000, '10:00', '19:00'),

(5, 6, 'Maria Fernanda Salazar Gutierrez', 22, 1002589637, 3600000, '07:00', '16:00'),

(6, 7, 'Carlos Esteban Perez Leon', 20, 1023498754, 2600000, '12:00', '21:00'),

(7, 5, 'Paula Andrea Mendoza Morales', 42, 1014587963, 2500000, '06:00', '15:00'),

(8, 1, 'Natalia Isabel Torres Rincon', 30, 1001265874, 1800000, '08:00', '17:00'),

(9, 9, 'Santiago Alfonso Ortiz Silva', 29, 1008459621, 2300000, '14:00', '22:00'),

(10, 8, 'Julian Mauricio Castro Niño', 25, 1021548796, 3000000, '11:00', '20:00');

GO
-------------------------------

CREATE TABLE [Beneficios_Lealtad](
    [Id_Beneficio] int IDENTITY(1,1) PRIMARY KEY,
    [Descripcion] varchar(255) NOT NULL,
    [Puntos_Requeridos] int NOT NULL
);
GO

INSERT INTO [Beneficios_Lealtad] ([Descripcion], [Puntos_Requeridos]) VALUES
('10% de descuento en próxima compra', 100),

('Producto gratis seleccionable', 200),

('Cupon $5000', 150),

('Envío gratuito', 80),

('Acceso a promociones exclusivas', 50),

('Tarjeta regalo $10000', 300),

('Cupón de $5000 en frutas y verduras', 150),

('Acceso a ofertas exclusivas en víveres', 50),

('Asesoría nutricional personalizada', 250),

('Canje por productos de limpieza del hogar', 180);
GO

-------------------------------
CREATE TABLE [Programa_de_Lealtad](
    [Id_Programa_Lealtad] int IDENTITY(1,1) PRIMARY KEY,
    [Id_Beneficio] int NOT NULL,
    [Puntos_Cliente] int,
    [Fecha_Afiliacion] date,

    FOREIGN KEY ([Id_Beneficio]) REFERENCES [Beneficios_Lealtad]([Id_Beneficio])
);
GO

INSERT INTO [Programa_de_Lealtad] ([Id_Beneficio], [Puntos_Cliente], [Fecha_Afiliacion]) 

VALUES
(1, 90, '2024-05-01'),

(2, 210, '2023-10-10'),

(3, 170, '2023-12-20'),

(4, 60, '2024-01-15'),

(5, 55, '2024-04-01'),

(6, 275, '2024-02-20'),

(7, 310, '2023-11-05'),

(8, 125, '2024-03-22'),

(9, 185, '2024-03-30'),

(10, 225, '2024-04-10');
GO

-------------------------------
CREATE TABLE [Clientes](
    [Id_Cliente] int IDENTITY(1,1) PRIMARY KEY,
    [Id_Programa_Lealtad] int,
    [Nombre_Completo] varchar(100) NOT NULL,
    [Correo] varchar(30) NOT NULL,
    [Telefono] varchar(15) NOT NULL,
    FOREIGN KEY ([Id_Programa_Lealtad]) REFERENCES [Programa_de_Lealtad]([Id_Programa_Lealtad])
);
GO

INSERT INTO [Clientes] ([Id_Programa_Lealtad], [Nombre_Completo], [Correo], [Telefono])

VALUES
(1, 'Juan Felipe Rodríguez Pérez', 'juan.rodriguez@gmail.com', '031-7456789'),

(2, 'María Alejandra Gómez Ruiz', 'maria.gomez@gmail.com', '3124567891'),

(3, 'Carlos Andrés Torres Jiménez', 'carlos.torres@hotmail.com', '3156789012'),

(4, 'Laura Vanessa Martínez Díaz', 'laura.martinez@gmail.com', '3012301948'),

(5, 'José Manuel Herrera Castro', 'jose.herrera@outlook.com', '3161234567'),

(6, 'Ana Sofía Ramírez Morales', 'ana.ramirez@gmail.com', '3012303348'),

(7, 'David Santiago Ruiz Peña', 'david.ruiz@gmail.com', '3178765432'),

(8, 'Camila Daniela Romero Vargas', 'camila.romero@gmail.com', '3145678901'),

(9, 'Mateo Nicolás Castaño Mejía', 'mateo.castano@gmail.com', '3119873480'),

(10, 'Valentina Isabel Pineda Lozano', 'valentina.pineda@gmail.com', '3120987654'),

(NULL, 'Jorge Alejandro Magno Maldonado' ,'alejandromagperez@gmail.com', '3115941390'),

(NULL, 'Sofia Marcela Reyes Delgado', 'sofia.reyes@gmail.com', '3024525439'),

(NULL, 'Esteban David Moreno Páez', 'esteban.moreno@hotmail.com', '3124567890'),

(NULL, 'Luisa Fernanda Acosta Ríos', 'luisa.acosta@outlook.com', '3008942490'),

(NULL, 'Diego Alejandro Muñoz Londoño', 'diego.munoz@gmail.com', '3134567812'),

(NULL, 'Isabella Valentina Nieto Cárdenas', 'isabella.nieto@gmail.com', '3157890123')
GO

-------------------------------
CREATE TABLE [Metodos_Pago](
   [Id_Metodo_Pago] int IDENTITY(1,1) PRIMARY KEY, 
   [Metodo] varchar(30)
);
GO

INSERT INTO [Metodos_Pago] ([Metodo]) VALUES
('Efectivo'),
('Tarjeta de crédito'),
('Tarjeta débito'),
('Nequi'),
('Daviplata');
GO
-------------------------------

CREATE TABLE [Estado_Pedidos](
   [Id_Estado_Pedido] int IDENTITY(1,1) PRIMARY KEY, 
   [Estado] varchar(25)
);
GO

INSERT INTO [Estado_Pedidos] ([Estado]) VALUES
('Pendiente'),
('Completado');
GO

-------------------------------

CREATE TABLE [Pedidos](
    [Id_Pedido] int IDENTITY(1,1) PRIMARY KEY, 
    [Id_Cliente] int NOT NULL, -- Foreign
    -- [Id_Producto] int NOT NULL, -- Foreign
    [Id_Estado_Pedido] int NOT NULL, -- Foreign
    [Id_Metodo_Pago] int NOT NULL, -- Foreign
    [Fecha_Pedido] date NOT NULL,
    [Subtotal] int NOT NULL

    FOREIGN KEY ([Id_Cliente]) REFERENCES [Clientes]([Id_Cliente]),
    FOREIGN KEY ([Id_Estado_Pedido]) REFERENCES [Estado_Pedidos]([Id_Estado_Pedido]),
    FOREIGN KEY ([Id_Metodo_Pago]) REFERENCES [Metodos_Pago]([Id_Metodo_Pago])
);
GO

INSERT INTO [Pedidos] ([Id_Cliente], [Id_Estado_Pedido], [Id_Metodo_Pago], [Fecha_Pedido], [Subtotal]) 

VALUES

(1, 1, 2, '2024-04-10', 55000),

(2, 2, 5, '2024-03-22', 87000),

(3, 1, 1, '2024-04-15', 42000),

(4, 2, 3, '2024-02-28', 69000),

(5, 2, 4, '2024-03-05', 76000),

(6, 1, 1, '2024-04-02', 51000),

(7, 2, 2, '2024-03-29', 98000),

(8, 1, 1, '2024-04-11', 36000),

(9, 2, 3, '2024-04-08', 73500),

(10, 1, 4, '2024-04-12', 49500);
GO
-------------------------------

CREATE TABLE [Pedidos_Productos](
    [Id_Pedido] int NOT NULL,
    [Id_Producto] int NOT NULL,
    [Cantidad] int NOT NULL,
    [Precio_Unitario] int NOT NULL,

    PRIMARY KEY ([Id_Pedido], [Id_Producto]),

    FOREIGN KEY ([Id_Pedido]) REFERENCES [Pedidos]([Id_Pedido]),
    FOREIGN KEY ([Id_Producto]) REFERENCES [Productos]([Id_Producto])
);
GO

INSERT INTO [Pedidos_Productos] ([Id_Pedido], [Id_Producto], [Cantidad], [Precio_Unitario]) VALUES
(1, 1, 2, 8600),
(1, 3, 1, 5500),

(2, 2, 1, 22450),
(2, 4, 1, 9120),

(3, 5, 2, 10500),

(4, 6, 1, 8700),
(4, 9, 3, 5200),

(5, 7, 2, 5100),
(5, 17, 5, 5200),

(6, 10, 1, 23900),

(7, 8, 1, 6200),
(7, 5, 1, 10500);
GO

-------------------------------
CREATE TABLE [Facturas](
    [Id_Factura] int IDENTITY (1,1) PRIMARY KEY,
    [Id_Pedido] int NOT NULL,
    [IVA] int,
    [Monto_Total] int NOT NULL

    FOREIGN KEY ([Id_Pedido]) REFERENCES [Pedidos] ([Id_Pedido])
);
GO

INSERT INTO [Facturas] ([Id_Pedido], [IVA], [Monto_Total]) VALUES

(1, 10450, 65450),

(2, 16530, 103530),

(3, 7980, 49980),

(4, 13110, 82110),

(5, 14440, 90440),

(6, 9690, 60690),

(7, 18620, 116620),

(8, 6840, 42840),

(9, 13965, 87465),

(10, 9405, 58905);
GO
------------------------------------

-- ************************************ SELECTS BASICOS ************************************

SELECT * FROM Productos
WHERE Precio_Venta <= 10000;
---
SELECT Nombre_Completo, CONVERT(varchar(8), Inicio_Turno, 108) AS Inicio_Turno, 
       CONVERT(varchar(8), Fin_Turno, 108) AS Fin_Turno
 FROM Empleados
WHERE Fin_Turno > '17:00'
ORDER BY Nombre_Completo;
---
SELECT Id_Empleado, Id_Sucursal, Nombre_Completo, Salario FROM Empleados
WHERE Edad <= 20
ORDER BY Salario ASC;

---
SELECT Nombre_Completo, Correo FROM Clientes 
WHERE Id_Programa_Lealtad IS NULL
ORDER BY Nombre_Completo;

-- ************************************ UPDATES ************************************
UPDATE Pedidos 
SET Id_Estado_Pedido = 2 -- Completado
WHERE Id_Pedido = 1 AND Id_Cliente = 3;

UPDATE Productos
SET Precio_Venta = 7000
WHERE Nombre = 'Mini brownies horneaditos 12 und 280 grs';

UPDATE Inventarios
SET Stock_Actual = Stock_Actual + 100, Ultima_Actualizacion = GETDATE()
WHERE Id_Producto = 1;

-- ************************************ JOINS ************************************
-- Saber cuales son los productos más vendidos:
SELECT P.Nombre, SUM(PP.Cantidad) AS Total_Vendido
FROM Pedidos_Productos PP
JOIN Productos P ON PP.Id_Producto = P.Id_Producto
GROUP BY P.Nombre
ORDER BY Total_Vendido DESC;

-- Ver productos a punto de agotarse
SELECT P.Nombre, I.Stock_Actual, I.Stock_Minimo
FROM Productos P
JOIN Inventarios I ON P.Id_Producto = I.Id_Producto
WHERE I.Stock_Actual <= I.Stock_Minimo;

-- Ver los clientes frecuentes:
SELECT C.Nombre_Completo, COUNT(P.Id_Pedido) AS Total_Pedidos, SUM(F.Monto_Total) AS Total_Gastado
FROM Clientes C
JOIN Pedidos P ON C.Id_Cliente = P.Id_Cliente
JOIN Facturas F ON P.Id_Pedido = F.Id_Pedido
GROUP BY C.Nombre_Completo;