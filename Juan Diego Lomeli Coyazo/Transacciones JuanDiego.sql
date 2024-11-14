
--Nombre:Lomeli Coyazo Juan Diego
--Fecha: 14 de Noviembre del 2024
--Tema: Transacciones

------------Transaccion 1 ---------------------------
-- Iniciar la transacci�n
BEGIN TRANSACTION;
UPDATE Clientes
SET Genero = 'Femenino'
WHERE PrimerNombre = 'Mar�a' AND ApellidoPaterno = 'L�pez' AND ApellidoMaterno = 'Ram�rez';
COMMIT TRANSACTION;
ROLLBACK TRANSACTION;

------------Transaccion 2 ---------------------------
BEGIN TRANSACTION;
UPDATE Pedidios
SET descripccion_Pedido = 'Compra de 50 productos l�cteos'
WHERE codigo_cliente = 1 AND mes_de_pedido = 'enero' AND a�o_de_pedido = 2023;
COMMIT TRANSACTION;
ROLLBACK TRANSACTION;


------------Transaccion 3 ---------------------------
BEGIN TRANSACTION;
UPDATE Ventas
SET descuento_aplicado = 9.00, tipo_pago = 'contado', codigo_pedido = 16
WHERE dia = 8 AND mes = 'abril' AND a�o = 2024;
COMMIT TRANSACTION;
ROLLBACK TRANSACTION;


------------Transaccion 4 ---------------------------
BEGIN TRANSACTION;
UPDATE Ventas_y_Productos
SET precioUnitario = 80.00000, cantidad = 4, codigo_Venta = 3, codigo_Producto = 3
WHERE descripccion = 'Yogur Natural - Tarro grande';
COMMIT TRANSACTION;
ROLLBACK TRANSACTION;


------------Transaccion 5 ---------------------------
BEGIN TRANSACTION;
UPDATE Ventas_y_Productos
SET precioUnitario = 80.00000, cantidad = 4, codigo_Venta = 3, codigo_Producto = 3
WHERE descripccion = 'Yogur Natural - Tarro grande';
COMMIT TRANSACTION;
ROLLBACK TRANSACTION;

