--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Datos de la tabla STATUS-VIVIENDA
--@Registros: 6

insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'DI', 'DISPONIBLE')
;

insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'ER', 'EN RENTA')
;

insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'ALQ', 'ALQUILADA')
;

insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'EV', 'EN VENTA')
;

insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'VEN', 'VENDIDA')
;

insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'IN', 'INACTIVA')
;