----------------------------------
--Nombre: Osvaldo Gutierrez Sanchez
--Fecha: 14 de Noviembre del 2024
--Tema: Transacciones
------------------------------
--Usar la base de datos 
use Cremeria1


-------------
---TRANSACCION 1----------
-------------------------------
Begin Transaction
update Categorias
set Lacteos= 'Leche'
where Lacteos= 'yogurt '

--Confrimar transaccion
Commit Transaction

--Cancelar transaccion
Rollback Transaction

--ver bloqueos
Execute sp_lock

-------------
---TRANSACCION 2----------
-------------------------------

Begin Transaction
update Transportes 
set Marca= 'Chevrolet'
where Marca = 'Nissan '

--Confrimar transaccion
Commit Transaction

--Cancelar transaccion
Rollback Transaction

--ver bloqueos
Execute sp_lock


-------------
---TRANSACCION 3----------
-------------------------------

Begin Transaction
update  Provedores
set Localidad= 'Sahuayo'
where Localidad= 'Jiquilpan '

--Confrimar transaccion
Commit Transaction

--Cancelar transaccion
Rollback Transaction

--ver bloqueos
Execute sp_lock


-------------
---TRANSACCION 4----------
-------------------------------

Begin Transaction
update  Compras 
set mes_de_compra= 'Octubre'
where mes_de_compra = 'Agosto '

--Confrimar transaccion
Commit Transaction

--Cancelar transaccion
Rollback Transaction

--ver bloqueos
Execute sp_lock


-------------
---TRANSACCION 5----------
-------------------------------

Begin Transaction
update  Compras_y_Productos
set Cantidad_De_Productos= '100'
where Cantidad_De_Productos = '150'

--Confrimar transaccion
Commit Transaction

--Cancelar transaccion
Rollback Transaction

--ver bloqueos
Execute sp_lock
