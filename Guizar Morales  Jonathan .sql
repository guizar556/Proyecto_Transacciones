-----------------------------------------
--Nombre: Jonathan Guizar Morales--------
--Fecha: 14/11/2024----------------------
--Tema: Transacciones--------------------
-----------------------------------------
--Nota las transacciones pueden ser una o varias pero una se ejecuta o varias se eecutana la ves os e cumple todo o no se cumple ningua 
--Usar la base de datos 
use Cremeria1

-----------------------------------------
------TRANSACCION 1----------------------
-----------------------------------------
Begin Transaction 
Update Clientes 
set Estado = 'Jacona'
where Estado = 'Michoacán'

--Confirmar transaccion 
Commit Transaction 
--Cancelar transaccion 
Rollback transaction 
--Ver blokeos 
Execute sp_lock


-----------------------------------------
------TRANSACCION 2----------------------
-----------------------------------------
Begin Transaction 
Update Empleados 
set ApellidoPaterno = 'Sanchez'
where ApellidoPaterno = 'Martínez'

--Confirmar transaccion 
Commit Transaction 
--Cancelar transaccion 
Rollback transaction 
--Ver blokeos 
Execute sp_lock


-----------------------------------------
------TRANSACCION 3----------------------
-----------------------------------------
Begin Transaction 
Update Provedores 
set CodigoPostal = 59035
where CodigoPostal = 60000

--Confirmar transaccion 
Commit Transaction 
--Cancelar transaccion 
Rollback transaction 
--Ver blokeos 
Execute sp_lock


-----------------------------------------
------TRANSACCION 4----------------------
-----------------------------------------
Begin Transaction 
Update Productos 
set stock_minimo =5
where stock_minimo = 10

--Confirmar transaccion 
Commit Transaction 
--Cancelar transaccion 
Rollback transaction 
--Ver blokeos 
Execute sp_lock


-----------------------------------------
------TRANSACCION 5----------------------
-----------------------------------------
Begin Transaction 
Update Compras 
set tipoDeCompra ='Contado'
where tipoDeCompra = 'Mayorista'


--Confirmar transaccion 
Commit Transaction 
--Cancelar transaccion 
Rollback transaction 
--Ver blokeos 
Execute sp_lock

