--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Carga de datos

whenever sqlerror exit rollback;

Prompt Insertando registro 1

Prompt 1
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Drenaje', 'Servicio de drenaje completamente 
funcional, tuberías de acero inoxidable recién colocadas.', empty_blob()
)
;

Prompt 2
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Electricidad', 'Cableado óptimo en toda
  la propiedad, sin daños en la instalación eléctrica.', empty_blob()
)
;

Prompt 3
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Agua potable', 'Agua purificada con salidas
  en todas las zonas requeridas de la casa.', empty_blob()
)
;

Prompt 4
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Internet', 'Internet con velocidad de carga
  y descarga suficiente para realizar tareas cotidianas.', empty_blob()
)
;

Prompt 5
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Teléfono', 'Servicio de telefonía fija.',
  empty_blob()
)
;

Prompt 6
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Televisión satelital', 'Canales adicionales
  proporcionados a través de una antena de señal satelital.', empty_blob()
)
;

Prompt 7
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'DI', 'Se asigna a una vivienda cuando 
está disponible para ser rentada, comprada o alquilada'
)
;

Prompt 8
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'HArribasM8@yahoo.com', 'HuguitoA', 'Hugo',
  'Arribas', 'Márquez', 'HAM88viv.'
)
;

Prompt 9
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 0, 0,
  'Avenida Siempre Viva #82, Col. Almizclera, Tlaxcala, México', '23.608°N',
    '100.532°W', 6, 'Casa estilo barroco de dos plantas en muy buena ubicación.
    Vecindario muy seguro con escuelas y plazas comerciales cerca. Terreno de
    300 metros cuadrados.', seq_status_vivienda.currval, seq_usuario.currval
)
;

Prompt 10
insert into historico_status_vivienda (historico_status_vivienda_id,
  vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, seq_vivienda.currval
  seq_status_vivienda.currval
)
;

Prompt 11
insert into imagen (num_foto, vivienda_id, foto)
values (1, seq_vivienda.currval, empty_blob()
)
;

Prompt 12
insert into imagen (num_foto, vivienda_id, foto)
values (2, seq_vivienda.currval, empty_blob()
)
;

Prompt 13
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 1,
  seq_vivienda.currval
)
;

Prompt 14
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 2,
  seq_vivienda.currval
)
;

Prompt 15
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 3,
  seq_vivienda.currval
)
;

Prompt 16
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 4,
  seq_vivienda.currval
)
;

Prompt 17
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 5,
  seq_vivienda.currval
)
;

Prompt 18
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Interés en su casa', 'Buenas tardes 
  don Antonio, me gustaría comunicarme personalmente con usted para de una 
  posible renta de su casa, ya que me atrae mucho. Saludos cordiales,
  Ramiro Segura.', 0, seq_usuario.currval, , seq_vivienda.currval
)
;

Prompt 19
insert into vivienda_en_renta (renta_mensual, dia_deposito)
values (15000, 1)
;

Prompt 20
insert into clabe_vivienda (clabe_vivienda_id, vivienda_id, clabe)
values (seq_clabe_vivienda.nextval, vivienda_id.currval, 
  918265330981564278
)
;

Prompt 21
insert into clabe_vivienda (clabe_vivienda_id, vivienda_id, clabe)
values (seq_clabe_vivienda.nextval, vivienda_id.currval, 
  278351872009825675
)
;

Prompt 22
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'Samper_PinM@gmail.com', 'Marco55', 'Marco',
  'Pineda', 'Samper', '012SamPiM='
)
;

Prompt 23
insert into contrato (contrato_id, folio, documento, vivienda_id,
  usuario_id)
values(seq_contrato.nextval, 98071652, empty_blob(), seq_vivienda.currval,
  seq_usuario.currval
)
;

-- Validado hasta aquí

commit;