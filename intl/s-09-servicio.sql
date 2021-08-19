--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Datos de la tabla SERVICIO
--@Registros: 6

insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Drenaje', 'Servicio de drenaje completamente 
funcional, tuberías de acero inoxidable recién colocadas.', empty_blob())
;

insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Electricidad', 'Cableado óptimo en toda
  la propiedad, sin daños en la instalación eléctrica.', empty_blob())
;

insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Agua potable', 'Agua purificada con salidas
  en todas las zonas requeridas de la casa.', empty_blob())
;

insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Internet', 'Internet con velocidad de carga
  y descarga suficiente para realizar tareas cotidianas.', empty_blob())
;

insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Teléfono', 'Servicio de telefonía fija.',
  empty_blob())
;

insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Televisión satelital', 'Canales adicionales
  proporcionados a través de una antena de señal satelital.', empty_blob())
;